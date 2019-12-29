insert into BQTY (BID, PID, QTY) values (1, 1, 8);
insert into BQTY (BID, PID, QTY) values (2, 2, 5);
insert into BQTY (BID, PID, QTY) values (3, 3, 10);
insert into BQTY (BID, PID, QTY) values (4, 4, 2);
insert into BQTY (BID, PID, QTY) values (5, 5, 10);
insert into BQTY (BID, PID, QTY) values (6, 6, 3);
insert into BQTY (BID, PID, QTY) values (7, 7, 9);
insert into BQTY (BID, PID, QTY) values (8, 8, 2);
insert into BQTY (BID, PID, QTY) values (9, 9, 6);
insert into BQTY (BID, PID, QTY) values (10, 10, 1);

insert into Branches (BID, BNAME, BADD, BMAN) values (1, 'San Luis Jilotepeque', '697 Brickson Park Parkway', 5);
insert into Branches (BID, BNAME, BADD, BMAN) values (2, 'Kyzylzhar', '1762 Nancy Park', 5);
insert into Branches (BID, BNAME, BADD, BMAN) values (3, 'Wenquan', '2509 Blackbird Crossing', 7);
insert into Branches (BID, BNAME, BADD, BMAN) values (4, 'Sävedalen', '4 Towne Point', 6);
insert into Branches (BID, BNAME, BADD, BMAN) values (5, 'Kolirerek', '52 Springview Park', 6);
insert into Branches (BID, BNAME, BADD, BMAN) values (6, 'Smyshlyayevka', '1860 Lakeland Street', 2);
insert into Branches (BID, BNAME, BADD, BMAN) values (7, 'Ozorków', '72 Comanche Plaza', 5);
insert into Branches (BID, BNAME, BADD, BMAN) values (8, 'Baiyang', '8 Northridge Terrace', 10);
insert into Branches (BID, BNAME, BADD, BMAN) values (9, 'Centurion', '561 Gateway Trail', 4);
insert into Branches (BID, BNAME, BADD, BMAN) values (10, 'Fox Creek', '09765 Mayfield Way', 5);

insert into Customers (CID, CFN, CLN, CAD, CEM, CMN, CG) values (1, 'Findley', 'Ostler', '8745 Spaight Park', 'fostler0@lycos.com', 76438815811, 1);
insert into Customers (CID, CFN, CLN, CAD, CEM, CMN, CG) values (2, 'Byrann', 'Lorimer', '8517 David Park', 'blorimer1@marketwatch.com', 70609901611, 2);
insert into Customers (CID, CFN, CLN, CAD, CEM, CMN, CG) values (3, 'Cobbie', 'Blancowe', '8704 Bobwhite Drive', 'cblancowe2@wikipedia.org', 76756343029, 1);
insert into Customers (CID, CFN, CLN, CAD, CEM, CMN, CG) values (4, 'Hammad', 'Czajka', '93827 Derek Drive', 'hczajka3@slideshare.net', 74613646816, 2);
insert into Customers (CID, CFN, CLN, CAD, CEM, CMN, CG) values (5, 'Nerty', 'Hobben', '2 Kennedy Place', 'nhobben4@fotki.com', 73122247388, 1);
insert into Customers (CID, CFN, CLN, CAD, CEM, CMN, CG) values (6, 'Ada', 'Pennyman', '115 Amoth Junction', 'apennyman5@is.gd', 71792703282, 2);
insert into Customers (CID, CFN, CLN, CAD, CEM, CMN, CG) values (7, 'Teresita', 'Atley', '17510 Roxbury Plaza', 'tatley6@statcounter.com', 70159361298, 1);
insert into Customers (CID, CFN, CLN, CAD, CEM, CMN, CG) values (8, 'Gradey', 'Bau', '5940 Holmberg Terrace', 'gbau7@nyu.edu', 72352404545, 1);
insert into Customers (CID, CFN, CLN, CAD, CEM, CMN, CG) values (9, 'Dee', 'Stoneley', '37 Westridge Junction', 'dstoneley8@webs.com', 71638215611, 1);
insert into Customers (CID, CFN, CLN, CAD, CEM, CMN, CG) values (10, 'Callean', 'Goodding', '90 Claremont Parkway', 'cgoodding9@berkeley.edu', 73442446943, 0);

insert into Orders (OID, CID, ODATE, PID, BID) values (1, 1, '7/31/2019', 1, 1);
insert into Orders (OID, CID, ODATE, PID, BID) values (2, 2, '4/2/2019', 2, 2);
insert into Orders (OID, CID, ODATE, PID, BID) values (3, 3, '8/21/2019', 3, 3);
insert into Orders (OID, CID, ODATE, PID, BID) values (4, 4, '9/7/2019', 4, 4);
insert into Orders (OID, CID, ODATE, PID, BID) values (5, 5, '12/30/2018', 5, 5);
insert into Orders (OID, CID, ODATE, PID, BID) values (6, 6, '11/19/2018', 6, 6);
insert into Orders (OID, CID, ODATE, PID, BID) values (7, 7, '4/26/2019', 7, 7);
insert into Orders (OID, CID, ODATE, PID, BID) values (8, 8, '9/20/2019', 8, 8);
insert into Orders (OID, CID, ODATE, PID, BID) values (9, 9, '10/3/2019', 9, 9);
insert into Orders (OID, CID, ODATE, PID, BID) values (10, 10, '7/10/2019', 10, 10);

insert into Prices (DATE, PID, PRICE) values ('7/17/2019', 10, 68.91);
insert into Prices (DATE, PID, PRICE) values ('7/29/2019', 10, 26.52);
insert into Prices (DATE, PID, PRICE) values ('6/13/2019', 1, 0.97);
insert into Prices (DATE, PID, PRICE) values ('10/15/2019', 5, 32.89);
insert into Prices (DATE, PID, PRICE) values ('1/25/2019', 2, 76.11);
insert into Prices (DATE, PID, PRICE) values ('2/9/2019', 2, 18.31);
insert into Prices (DATE, PID, PRICE) values ('6/15/2019', 7, 19.58);
insert into Prices (DATE, PID, PRICE) values ('6/28/2019', 5, 27.22);
insert into Prices (DATE, PID, PRICE) values ('2/21/2019', 1, 55.58);
insert into Prices (DATE, PID, PRICE) values ('1/19/2019', 2, 98.77);

insert into Products (PID, PNAME, PDESC, PSIZE, UOM, AISLE, LIVE) values (1, 'Wine - Red, Gallo, Merlot', 'Puree - Mango', 71, 'AREA', 70, true);
insert into Products (PID, PNAME, PDESC, PSIZE, UOM, AISLE, LIVE) values (2, 'Sherry - Dry', 'Brandy - Bar', 41, 'KG', 37, true);
insert into Products (PID, PNAME, PDESC, PSIZE, UOM, AISLE, LIVE) values (3, 'Sultanas', 'Turkey - Breast, Bone - In', 78, 'AREA', 38, false);
insert into Products (PID, PNAME, PDESC, PSIZE, UOM, AISLE, LIVE) values (4, 'Sauce - Gravy, Au Jus, Mix', 'Magnotta - Bel Paese White', 31, 'AREA', 81, false);
insert into Products (PID, PNAME, PDESC, PSIZE, UOM, AISLE, LIVE) values (5, 'Nut - Hazelnut, Whole', 'Snapple - Mango Maddness', 33, 'LITRE', 14, true);
insert into Products (PID, PNAME, PDESC, PSIZE, UOM, AISLE, LIVE) values (6, 'Island Oasis - Cappucino Mix', 'Cheese - Brick With Pepper', 26, 'LENGTH', 49, true);
insert into Products (PID, PNAME, PDESC, PSIZE, UOM, AISLE, LIVE) values (7, 'Oil - Olive', 'Chick Peas - Canned', 70, 'LENGTH', 21, true);
insert into Products (PID, PNAME, PDESC, PSIZE, UOM, AISLE, LIVE) values (8, 'Veal - Liver', 'Noodles - Steamed Chow Mein', 14, 'LENGTH', 90, true);
insert into Products (PID, PNAME, PDESC, PSIZE, UOM, AISLE, LIVE) values (9, 'Veal - Liver', 'Glaze - Clear', 95, 'LENGTH', 74, true);
insert into Products (PID, PNAME, PDESC, PSIZE, UOM, AISLE, LIVE) values (10, 'Sauce - Rosee', 'Gatorade - Xfactor Berry', 57, 'LENGTH', 75, false);

insert into Staff (SID, BID, SFN, SLN, SAD, SEM, SMN, SAGE) values (1, 83, 'Liza', 'Connah', '26127 Garrison Crossing', 'lconnah0@slideshare.net', 73186750409, 81);
insert into Staff (SID, BID, SFN, SLN, SAD, SEM, SMN, SAGE) values (2, 90, 'Teddie', 'Mallows', '0 Thierer Parkway', 'tmallows1@networksolutions.com', 73928116803, 87);
insert into Staff (SID, BID, SFN, SLN, SAD, SEM, SMN, SAGE) values (3, 59, 'Nester', 'Seton', '0437 Mariners Cove Trail', 'nseton2@accuweather.com', 72588571231, 31);
insert into Staff (SID, BID, SFN, SLN, SAD, SEM, SMN, SAGE) values (4, 21, 'Kean', 'Brumpton', '4 Nevada Hill', 'kbrumpton3@army.mil', 74203119206, 54);
insert into Staff (SID, BID, SFN, SLN, SAD, SEM, SMN, SAGE) values (5, 77, 'Deva', 'Annis', '27650 Graceland Court', 'dannis4@bing.com', 75516400857, 80);
insert into Staff (SID, BID, SFN, SLN, SAD, SEM, SMN, SAGE) values (6, 61, 'Storm', 'Vispo', '3 Lighthouse Bay Parkway', 'svispo5@foxnews.com', 78858480353, 15);
insert into Staff (SID, BID, SFN, SLN, SAD, SEM, SMN, SAGE) values (7, 24, 'Dulcinea', 'Maccree', '92106 Dawn Crossing', 'dmaccree6@unesco.org', 79496220650, 3);
insert into Staff (SID, BID, SFN, SLN, SAD, SEM, SMN, SAGE) values (8, 95, 'Ketty', 'Trusler', '262 Bobwhite Avenue', 'ktrusler7@tinyurl.com', 76010484297, 59);
insert into Staff (SID, BID, SFN, SLN, SAD, SEM, SMN, SAGE) values (9, 32, 'Cariotta', 'Boram', '67 Fisk Junction', 'cboram8@behance.net', 79577373927, 31);
insert into Staff (SID, BID, SFN, SLN, SAD, SEM, SMN, SAGE) values (10, 100, 'Salomo', 'Ribey', '47455 Village Green Street', 'sribey9@woothemes.com', 76044494021, 76);

