var app = angular.module('demo', ['ngFlowGrid']);

app.controller('appCtrl',['$scope','fgDelegate',function($scope,fgDelegate){
	$scope.items = [
		{
			id:1,
			img:'../confidence.jpg',
			name:'Confidence',
			link:'/contents/confidence-intro',
		},
		{
			id:2,
            img:'../comingsoon.jpg',
			name:'Coming soon',
			link:'',
		},
		
	]
	$scope.confidence = [
		{
			id:1,
			img:'../confidenceintro.jpg',
			name:'Intro',
			link:'/contents/confidence-intro',
		},
		{
			id:2,
            img:'../acceptence.jpg',
			name:'Accepting yourself',
			link:'/contents/accepting',
		},
		
	]

    $scope.addItem = function(){
    	var randomIndex = Math.floor(Math.random(0,1)* $scope.items.length)
    	var newItem = {
    		name:$scope.items[randomIndex].name,
    		img:$scope.items[randomIndex].img
    	}
    	// add a new item;
    	$scope.items.splice(0,0,newItem);

    	// make sure ngRepeat is finished rendering
    	$scope.$watch('$last',function(){
			fgDelegate.getFlow('demoGird').itemsChanged();
		});
    }

    $scope.changeWidth = function(width){
    	var flow = fgDelegate.getFlow('demoGird')

    	flow.minItemWidth += width;
    	fgDelegate.getFlow('demoGird').refill(true);
    }

    // then you can:
    // homePageGrid.minItemWidth = 150;
    // homePageGrid.refill();

}]);
