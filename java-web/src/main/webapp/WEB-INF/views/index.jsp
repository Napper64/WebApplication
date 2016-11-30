<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="./libs/bower_components/bootstrap-css-only/css/bootstrap.min.css" />
    <script type="text/javascript" src="./libs/bower_components/angular/angular.min.js"></script>
    <script type="text/javascript" src="./libs/bower_components/angular-resource/angular-resource.min.js"></script>
    <script type="text/javascript" src="./libs/bower_components/angular-spring-data-rest/dist/angular-spring-data-rest.min.js"></script>
    <script type="text/javascript" src="./libs/bower_components/lodash/dist/lodash.min.js"></script>
    <script type="text/javascript" src="./app/app.js"></script>
    <script type="text/javascript" src="./app/controller.js"></script>
    <script type="text/javascript" src="./app/service.js"></script>
  </head>
  <body data-ng-app="myApp">
    <div class="container" data-ng-controller="AppController">
      <div class="page-header">
        <h1>A checklist</h1>
      </div>
      <div class="alert alert-info" role="alert" data-ng-hide="items && items.length > 0">
        There are no items yet.
      </div>
      <form class="form-horizontal" role="form" data-ng-submit="addItem(newItem)">
        <div class="form-group" data-ng-repeat="item in items">
          <div class="checkbox col-xs-9">
            <label>
              <input type="checkbox" data-ng-model="item.checked" data-ng-change="updateItem(item)"/> {{item.description}}
            </label>
          </div>
          <div class="col-xs-3">
            <button class="pull-right btn btn-danger" type="button" title="Delete"
              data-ng-click="deleteItem(item)">
              <span class="glyphicon glyphicon-trash"></span>
            </button>
          </div>
        </div>
        <hr />
        <div class="input-group">
          <input type="text" class="form-control" data-ng-model="newItem" placeholder="Enter the description..." />
          <span class="input-group-btn">
            <button class="btn btn-default" type="submit" data-ng-disabled="!newItem" title="Add">
              <span class="glyphicon glyphicon-plus"></span>
            </button>
          </span>
        </div>
      </form>
    </div>
  </body>
</html>