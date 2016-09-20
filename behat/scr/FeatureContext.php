<?php

namespace NuvoleWeb\Drupal\Tests;

use Behat\Mink\Exception\ExpectationException;
use Drupal\node\Entity\Node;
use NuvoleWeb\Drupal\DrupalExtension\Context\RawDrupalContext;

/**
 * Class FeatureContext.
 *
 * @package NuvoleWeb\Drupal\Tests
 */
class FeatureContext extends RawDrupalContext {

  /**
   * @Then the content :title is not published
   */
  public function theContentIsNotPublished($title) {
    $result = \Drupal::entityQuery('node')
      ->condition('title', $title)
      ->execute();
    $nid = current($result);
    $status = Node::load($nid)->get('status')->value;
    if ($status) {
      throw new ExpectationException("Node {$title} should not be published.", $this->getSession());
    }
  }

}
