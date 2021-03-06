/* to do:
  1) to move INSERT commands in function;
  2) exclude stlid;
*/

DROP DATABASE IF EXISTS mil_svr93;
DROP USER IF EXISTS mil_svr93;
CREATE USER mil_svr93 WITH PASSWORD '39rvs_lim';
CREATE DATABASE mil_svr93 OWNER mil_svr93;
\connect mil_svr93;

CREATE TABLE cstl ( /* satellites catalog */
  stlid SMALLSERIAL,
  /* numeric for exact calculations */
  stlapogeeh NUMERIC(5, 1), /* h - height */
  stlperigeeh NUMERIC(5, 1), /* h - height */
  stlincl NUMERIC(7, 5), /* incl - inclination */
  stlascendingnodelng NUMERIC(8, 5), /* lng - longitude */
  stlperigeearg NUMERIC(8, 5) /* arg - argument */
);

GRANT ALL PRIVILEGES ON cstl TO mil_svr93; /* necessary! */

INSERT INTO cstl VALUES
  (DEFAULT, 918.1, 410.2, 97.86907, 205.44564, 29.15896);
INSERT INTO cstl VALUES
  (DEFAULT, 1044.0, 293.7, 98.02125, 153.01350, 143.51485);
INSERT INTO cstl VALUES
  (DEFAULT, 824.6, 411.5, 97.98021, 217.67064, 349.47469);
INSERT INTO cstl VALUES
  (DEFAULT, 684.6, 665.3, 57.02618, 151.49655, 58.61150);
INSERT INTO cstl VALUES
  (DEFAULT, 706.5, 691.4, 68.00705, 186.62317, 55.55186);
INSERT INTO cstl VALUES
  (DEFAULT, 1363.9, 864.3, 63.43311, 231.40255, 2.94788);
INSERT INTO cstl VALUES
  (DEFAULT, 1363.5, 864.8, 63.42962, 231.09404, 2.79216);
INSERT INTO cstl VALUES
  (DEFAULT, 1496.7, 732.4, 63.41191, 57.32944, 359.97205);
INSERT INTO cstl VALUES
  (DEFAULT, 1399.4, 829.0, 63.43716, 343.91063, 2.08737);
INSERT INTO cstl VALUES
  (DEFAULT, 1476.3, 750.5, 63.42148, 331.20401, 5.03343);
INSERT INTO cstl VALUES
  (DEFAULT, 1476.7, 750.2, 63.42213, 331.37881, 5.06631);
INSERT INTO cstl VALUES
  (DEFAULT, 1394.8, 833.6, 63.43153, 343.42366, 357.86918);
INSERT INTO cstl VALUES
  (DEFAULT, 1399.1, 829.3, 63.43262, 343.67348, 2.99901);
INSERT INTO cstl VALUES
  (DEFAULT, 1466.6, 760.0, 63.42235, 331.19724, 358.07506);
INSERT INTO cstl VALUES
  (DEFAULT, 1507.0, 723.0, 63.40853, 54.22990, 9.14518);
INSERT INTO cstl VALUES
  (DEFAULT, 1506.1, 723.8, 63.39519, 55.08832, 9.30911);
INSERT INTO cstl VALUES
  (DEFAULT, 1544.5, 678.8, 63.40033, 94.69888, 4.44267);
INSERT INTO cstl VALUES
  (DEFAULT, 1494.2, 730.4, 63.40481, 51.98818, 0.19593);
INSERT INTO cstl VALUES
  (DEFAULT, 1481.5, 741.6, 63.41727, 319.92502, 1.17273);
INSERT INTO cstl VALUES
  (DEFAULT, 885.5, 866.5, 99.07676, 144.50757, 113.01404);
INSERT INTO cstl VALUES
  (DEFAULT, 873.1, 868.8, 98.95125, 43.02325, 128.73130);
INSERT INTO cstl VALUES
  (DEFAULT, 823.5, 819.3, 98.69847, 164.74974, 343.23358);
INSERT INTO cstl VALUES
  (DEFAULT, 834.3, 824.5, 98.51974, 107.32451, 128.51949);
INSERT INTO cstl VALUES
  (DEFAULT, 885.0, 855.3, 98.86240, 176.07490, 96.13320);
INSERT INTO cstl VALUES
  (DEFAULT, 823.6, 797.7, 98.74989, 90.63333, 23.56995);
INSERT INTO cstl VALUES
  (DEFAULT, 881.9, 861.7, 99.14194, 125.33998, 111.00214);
INSERT INTO cstl VALUES
  (DEFAULT, 819.6, 811.5, 98.65990, 80.34532, 341.56393);
INSERT INTO cstl VALUES
  (DEFAULT, 823.3, 805.0, 85.00919, 66.44911, 68.92103);
INSERT INTO cstl VALUES
  (DEFAULT, 657.9, 639.7, 95.95837, 285.60436, 61.07478);
INSERT INTO cstl VALUES
  (DEFAULT, 655.0, 638.8, 95.89001, 82.68796, 92.05542);
INSERT INTO cstl VALUES
  (DEFAULT, 819.8, 798.3, 84.98744, 140.84167, 75.86653);
INSERT INTO cstl VALUES
  (DEFAULT, 798.2, 784.1, 98.50422, 285.27782, 20.18128);
INSERT INTO cstl VALUES
  (DEFAULT, 827.4, 817.0, 98.85633, 246.20635, 128.68576);
INSERT INTO cstl VALUES
  (DEFAULT, 882.3, 864.1, 98.89283, 129.65010, 104.87287);
INSERT INTO cstl VALUES
  (DEFAULT, 864.8, 840.5, 98.50712, 95.39807, 21.07236);
INSERT INTO cstl VALUES
  (DEFAULT, 832.5, 812.4, 98.67979, 232.60816, 44.04744);
INSERT INTO cstl VALUES
  (DEFAULT, 873.0, 852.5, 98.67093, 148.08599, 113.35025);
INSERT INTO cstl VALUES
  (DEFAULT, 867.1, 860.2, 98.82262, 106.08874, 56.15190);
INSERT INTO cstl VALUES
  (DEFAULT, 477.9, 462.0, 97.31102, 164.17737, 63.68197);
INSERT INTO cstl VALUES
  (DEFAULT, 731.6, 721.0, 98.26571, 157.26494, 66.26999);
INSERT INTO cstl VALUES
  (DEFAULT, 734.8, 717.2, 98.20244, 159.71217, 65.40823);
INSERT INTO cstl VALUES
  (DEFAULT, 726.0, 707.1, 98.21741, 193.87301, 59.39381);
INSERT INTO cstl VALUES
  (DEFAULT, 489.0, 471.0, 97.26206, 167.33117, 69.33387);
INSERT INTO cstl VALUES
  (DEFAULT, 857.8, 840.7, 98.72579, 166.93786, 67.92844);
INSERT INTO cstl VALUES
  (DEFAULT, 875.7, 838.3, 98.39887, 110.38356, 99.98531);
INSERT INTO cstl VALUES
  (DEFAULT, 857.3, 840.0, 98.69836, 166.65793, 65.56833);
INSERT INTO cstl VALUES
  (DEFAULT, 857.9, 840.2, 98.69760, 166.86540, 66.93526);
INSERT INTO cstl VALUES
  (DEFAULT, 657.0, 635.6, 98.34593, 118.49777, 97.26718);
INSERT INTO cstl VALUES
  (DEFAULT, 712.9, 696.5, 98.12966, 28.15054, 66.13773);
INSERT INTO cstl VALUES
  (DEFAULT, 713.0, 697.1, 98.12731, 27.97706, 67.69283);
