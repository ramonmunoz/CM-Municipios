//
//  Home.m
//  CM-StatesActivity
//
//  Created by Diego Alejandro Cruz Ramirez on 23/06/15.
//  Copyright (c) 2015 Master. All rights reserved.
//

#import "Home.h"
#import "CustomCellState.h"
#import "Declarations.h"
#import "AddNew.h"
#import "Details.h"

@interface Home ()

@end

@implementation Home

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)viewWillAppear:(BOOL)animated {
    [self.tblMain reloadData];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    maStates        = [[NSMutableArray alloc] initWithObjects: @"Guadalajara", @"Zapopan", @"San Pedro Tlaquepaque", @"Tlajomulco de Zuñiga", @"Tonala", @"Tala", @"El Salto", @"El Arenal", @"Zapotlanejo", @"Amatitan",nil];
    maGroups        = [[NSMutableArray alloc] initWithObjects: @"M.C.", @"M.C.", @"M.C.", @"M.C.", @"M.C.",@"PRI", @"PRI", @"PAN", @"M.C.", @"PRD",nil];
    maPoliticNames  = [[NSMutableArray alloc] initWithObjects: @"Enrique Alfaro", @"Jesús Lemus", @"Maria Elena Limón",  @"Alberto Uribe",   @"Sergio Chavez", @"Aaron Buenrostro", @"Marcos Rodriguez", @"Joaquin Gonzalez", @"Hector Alvarez", @"David Calderon",nil];
    maLogos         = [[NSMutableArray alloc] initWithObjects: @"movimiento.png", @"movimiento.png", @"movimiento.png", @"movimiento.png", @"movimiento.png", @"pri.png", @"pri.png", @"pan.png", @"movimiento.png", @"prd.png",nil];
    maDesc          = [[NSMutableArray alloc] initWithObjects:
                       @"20 Junio 1973\n2015-2018\nIng. Civil\nITESO",
                       @"18 Julio 1969\n2015-2018\nLic. en Administración de Empresas\nITESO",
                       @"No Disponible\n2015-2018\nLic. en Trabajo Social\nUniversidad de Guadalajara",
                       @"25 Mayo 1972\n2015-2018\nLic. en Derecho\nUniversidad de Guadalajara",
                       @"31 Octubre 1969\n2015-2018\nLic. en Informatica\nUniversidad de Guadalajara",
                       @"No Disponible\n2015-2018\nLic. en Derecho\nUniversidad de Guadalajara",
                       @"No Disponible\n2015-2018\nLic. en Derecho\nU.de.G.",
                       @"No Disponible\n2015-2018\nDr. en Derecho\nUniversidad Nacional Autonóma de México",
                       @"No Disponible\n2015-2018\nEstudios parciales\nIng. en Agronomía",
                       @"No Disponible\n2015-2018\nLic. en Economía\nTecnológico de Monterrey",nil];
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return maStates.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Initialize cells
    CustomCellState *cell = (CustomCellState *)[tableView dequeueReusableCellWithIdentifier:@"CustomCellState"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"CustomCellState" bundle:nil] forCellReuseIdentifier:@"CustomCellState"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCellState"];
    }
    //Fill cell with info from arrays
    cell.lblState.text   = maStates[indexPath.row];
    cell.lblState.adjustsFontSizeToFitWidth = YES;
    cell.lblPoliticName.text   = maPoliticNames[indexPath.row];
    cell.lblPoliticName.adjustsFontSizeToFitWidth = YES;
    //Check if there are not image in the carpet and load the image from memory
    if ([UIImage imageNamed:maLogos[indexPath.row]] == nil) {
        NSString *cachedFolderPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0];
        NSString *cachedImagePath = [cachedFolderPath stringByAppendingPathComponent:maLogos[indexPath.row]];
        cell.imgLogo.image = [UIImage imageWithData:[NSData dataWithContentsOfFile:cachedImagePath]];
    }else {
        cell.imgLogo.image  = [UIImage imageNamed:maLogos[indexPath.row]];
    }
    cell.lblGroup.text = maGroups[indexPath.row];
    cell.lblGroup.adjustsFontSizeToFitWidth = YES;
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    miCellIndex = (int)indexPath.row;
    Details *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Details"];
    
    [self presentViewController:viewController animated:YES completion:nil];
}

/**********************************************************************************************/
#pragma mark - Action methods
/**********************************************************************************************/
- (IBAction)btnAdd:(id)sender {
    AddNew *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"AddNew"];
    
    [self presentViewController:viewController animated:YES completion:nil];
}
@end
