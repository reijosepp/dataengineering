DROP TABLE IF EXISTS staging_article_data; 
CREATE TABLE IF NOT EXISTS staging_article_data (
article_id VARCHAR(1000),
doi VARCHAR(1000),
version_id VARCHAR(1000),
version VARCHAR(1000),
created DATE,
author_id VARCHAR(1000),
author VARCHAR(5000),
id VARCHAR(1000),
submitter VARCHAR(1000),
title VARCHAR(1000),
categories VARCHAR(1000),
update_date VARCHAR(1000),
pages integer,
figures integer,
year VARCHAR(1000),
month VARCHAR(1000),
author_type integer);
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1367-2630/9/6/206','NULL','v1','2007-04-02','NULL','Perdrix. Simon. ','704.0202','Perdrix','Towards Minimal Resources of Measurement-based Quantum Computation','quant-ph','2007-09-20','8','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518560','NULL','v1','2007-04-02','NULL','Muench. August A. ','704.0203','Muench','A Spitzer census of the IC 348 nebula','astro-ph','2009-06-23','33','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518560','NULL','v1','2007-04-02','NULL',' Lada. Charles J. ','704.0203','Muench','A Spitzer census of the IC 348 nebula','astro-ph','2009-06-23','33','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518560','NULL','v1','2007-04-02','NULL',' Luhman. K. L. ','704.0203','Muench','A Spitzer census of the IC 348 nebula','astro-ph','2009-06-23','33','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518560','NULL','v1','2007-04-02','NULL',' Muzerolle. James. ','704.0203','Muench','A Spitzer census of the IC 348 nebula','astro-ph','2009-06-23','33','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518560','NULL','v1','2007-04-02','NULL',' Young. Erick. ','704.0203','Muench','A Spitzer census of the IC 348 nebula','astro-ph','2009-06-23','33','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1367-2630/9/8/278','NULL','v1','2007-04-02','NULL','Pala. Marco G. ','704.0204','Pala','Non-Equilibrium Josephson and Andreev Current through Interacting
  Quantum Dots','cond-mat.supr-con','2010-09-03','11','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1367-2630/9/8/278','NULL','v1','2007-04-02','NULL',' Governale. Michele. ','704.0204','Pala','Non-Equilibrium Josephson and Andreev Current through Interacting
  Quantum Dots','cond-mat.supr-con','2010-09-03','11','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1367-2630/9/8/278','NULL','v1','2007-04-02','NULL',' König. Jürgen. ','704.0204','Pala','Non-Equilibrium Josephson and Andreev Current through Interacting
  Quantum Dots','cond-mat.supr-con','2010-09-03','11','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1367-2630/9/8/278','NULL','v2','2007-08-29','NULL','Pala. Marco G. ','704.0204','Pala','Non-Equilibrium Josephson and Andreev Current through Interacting
  Quantum Dots','cond-mat.supr-con','2010-09-03','11','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1367-2630/9/8/278','NULL','v2','2007-08-29','NULL',' Governale. Michele. ','704.0204','Pala','Non-Equilibrium Josephson and Andreev Current through Interacting
  Quantum Dots','cond-mat.supr-con','2010-09-03','11','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1367-2630/9/8/278','NULL','v2','2007-08-29','NULL',' König. Jürgen. ','704.0204','Pala','Non-Equilibrium Josephson and Andreev Current through Interacting
  Quantum Dots','cond-mat.supr-con','2010-09-03','11','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077480','NULL','v1','2007-04-02','NULL','Esposito. P. ','704.0205','Esposito','Discovery of X-ray emission from the young radio pulsar PSR J1357-6429','astro-ph','2009-02-23','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077480','NULL','v1','2007-04-02','NULL',' Tiengo. A. ','704.0205','Esposito','Discovery of X-ray emission from the young radio pulsar PSR J1357-6429','astro-ph','2009-02-23','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077480','NULL','v1','2007-04-02','NULL',' De Luca. A. ','704.0205','Esposito','Discovery of X-ray emission from the young radio pulsar PSR J1357-6429','astro-ph','2009-02-23','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077480','NULL','v1','2007-04-02','NULL',' Mattana. F. ','704.0205','Esposito','Discovery of X-ray emission from the young radio pulsar PSR J1357-6429','astro-ph','2009-02-23','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077480','NULL','v2','2007-04-11','NULL','Esposito. P. ','704.0205','Esposito','Discovery of X-ray emission from the young radio pulsar PSR J1357-6429','astro-ph','2009-02-23','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077480','NULL','v2','2007-04-11','NULL',' Tiengo. A. ','704.0205','Esposito','Discovery of X-ray emission from the young radio pulsar PSR J1357-6429','astro-ph','2009-02-23','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077480','NULL','v2','2007-04-11','NULL',' De Luca. A. ','704.0205','Esposito','Discovery of X-ray emission from the young radio pulsar PSR J1357-6429','astro-ph','2009-02-23','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077480','NULL','v2','2007-04-11','NULL',' Mattana. F. ','704.0205','Esposito','Discovery of X-ray emission from the young radio pulsar PSR J1357-6429','astro-ph','2009-02-23','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.023815','NULL','v1','2007-04-02','NULL','Lepri. Stefano. ','704.0206','Lepri','Resonant activation in bistable semiconductor lasers','physics.optics','2009-11-13','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.023815','NULL','v1','2007-04-02','NULL',' Giacomelli. Giovanni. ','704.0206','Lepri','Resonant activation in bistable semiconductor lasers','physics.optics','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/0954-3899/34/8/S10','NULL','v1','2007-04-02','NULL','Prakash. M. ','704.0207','Prakash','Quark matter and the astrophysics of neutron stars','astro-ph','2009-06-23','8','6','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2803606','NULL','v1','2007-04-02','NULL','Park. Sangwook. Penn State. Burrows. David N. Penn State. Garmire. Gordon P. Penn State. McCray. Richard. Colorado. Racusin. Judith L. Penn State. Zhekov. Svetozar A. Space Res Inst','704.0209','Park','Chandra Observations of Supernova 1987A','astro-ph','2009-06-23','8','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/s00220-008-0641-z','NULL','v1','2007-04-02','NULL','Dancer. Andrew. ','704.021','Dancer','Classification of superpotentials','math.DG','2009-11-13','8','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/s00220-008-0641-z','NULL','v1','2007-04-02','NULL',' Wang. Mckenzie. ','704.021','Dancer','Classification of superpotentials','math.DG','2009-11-13','8','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1475-7516/2007/07/014','NULL','v1','2007-04-02','NULL','Lalak. Z. ','704.0212','Turzynski','Curvature and isocurvature perturbations in two-field inflation','hep-th','2009-11-13','29','12','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1475-7516/2007/07/014','NULL','v1','2007-04-02','NULL',' Langlois. D. ','704.0212','Turzynski','Curvature and isocurvature perturbations in two-field inflation','hep-th','2009-11-13','29','12','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1475-7516/2007/07/014','NULL','v1','2007-04-02','NULL',' Pokorski. S. ','704.0212','Turzynski','Curvature and isocurvature perturbations in two-field inflation','hep-th','2009-11-13','29','12','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1475-7516/2007/07/014','NULL','v1','2007-04-02','NULL',' Turzynski. K. ','704.0212','Turzynski','Curvature and isocurvature perturbations in two-field inflation','hep-th','2009-11-13','29','12','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1475-7516/2007/07/014','NULL','v2','2007-07-13','NULL','Lalak. Z. ','704.0212','Turzynski','Curvature and isocurvature perturbations in two-field inflation','hep-th','2009-11-13','29','12','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1475-7516/2007/07/014','NULL','v2','2007-07-13','NULL',' Langlois. D. ','704.0212','Turzynski','Curvature and isocurvature perturbations in two-field inflation','hep-th','2009-11-13','29','12','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1475-7516/2007/07/014','NULL','v2','2007-07-13','NULL',' Pokorski. S. ','704.0212','Turzynski','Curvature and isocurvature perturbations in two-field inflation','hep-th','2009-11-13','29','12','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1475-7516/2007/07/014','NULL','v2','2007-07-13','NULL',' Turzynski. K. ','704.0212','Turzynski','Curvature and isocurvature perturbations in two-field inflation','hep-th','2009-11-13','29','12','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/s00440-007-0116-8','NULL','v1','2007-04-02','NULL','Puchała. Zbigniew. ','704.0215','Rolski','The exact asymptotic of the collision time tail distribution for
  independent Brownian particles with different drifts','math.PR','2011-08-09','20','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/s00440-007-0116-8','NULL','v1','2007-04-02','NULL',' Rolski. Tomasz. ','704.0215','Rolski','The exact asymptotic of the collision time tail distribution for
  independent Brownian particles with different drifts','math.PR','2011-08-09','20','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.076802','NULL','v1','2007-04-02','NULL','Mattausch. Alexander. ','704.0216','Mattausch','Ab initio Study of Graphene on SiC','cond-mat.mtrl-sci','2009-11-13','4','3','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.076802','NULL','v1','2007-04-02','NULL',' Pankratov. Oleg. ','704.0216','Mattausch','Ab initio Study of Graphene on SiC','cond-mat.mtrl-sci','2009-11-13','4','3','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.076802','NULL','v2','2007-04-16','NULL','Mattausch. Alexander. ','704.0216','Mattausch','Ab initio Study of Graphene on SiC','cond-mat.mtrl-sci','2009-11-13','4','3','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.076802','NULL','v2','2007-04-16','NULL',' Pankratov. Oleg. ','704.0216','Mattausch','Ab initio Study of Graphene on SiC','cond-mat.mtrl-sci','2009-11-13','4','3','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1109/TIT.2008.2011437','NULL','v1','2007-04-02','NULL','Santipach. Wiroonsak. ','704.0217','Santipach','Capacity of a Multiple-Antenna Fading Channel with a Quantized Precoding
  Matrix','cs.IT','2010-08-27','4','3','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1109/TIT.2008.2011437','NULL','v1','2007-04-02','NULL',' Honig. Michael L. ','704.0217','Santipach','Capacity of a Multiple-Antenna Fading Channel with a Quantized Precoding
  Matrix','cs.IT','2010-08-27','4','3','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1109/TIT.2008.2011437','NULL','v2','2009-02-17','NULL','Santipach. Wiroonsak. ','704.0217','Santipach','Capacity of a Multiple-Antenna Fading Channel with a Quantized Precoding
  Matrix','cs.IT','2010-08-27','4','3','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1109/TIT.2008.2011437','NULL','v2','2009-02-17','NULL',' Honig. Michael L. ','704.0217','Santipach','Capacity of a Multiple-Antenna Fading Channel with a Quantized Precoding
  Matrix','cs.IT','2010-08-27','4','3','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518498','NULL','v1','2007-04-02','NULL','Gelfand. Joseph D. ','704.0219','Gelfand','The Radio Emission, X-ray Emission, and Hydrodynamics of G328.4+0.2: A
  Comprehensive Analysis of a Luminous Pulsar Wind Nebula, its Neutron Star,
  and the Progenitor Supernova Explosion','astro-ph','2009-06-23','27','11','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518498','NULL','v1','2007-04-02','NULL',' Gaensler. B. M. ','704.0219','Gelfand','The Radio Emission, X-ray Emission, and Hydrodynamics of G328.4+0.2: A
  Comprehensive Analysis of a Luminous Pulsar Wind Nebula, its Neutron Star,
  and the Progenitor Supernova Explosion','astro-ph','2009-06-23','27','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518498','NULL','v1','2007-04-02','NULL',' Slane. Patrick O. ','704.0219','Gelfand','The Radio Emission, X-ray Emission, and Hydrodynamics of G328.4+0.2: A
  Comprehensive Analysis of a Luminous Pulsar Wind Nebula, its Neutron Star,
  and the Progenitor Supernova Explosion','astro-ph','2009-06-23','27','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518498','NULL','v1','2007-04-02','NULL',' Patnaude. Daniel J. ','704.0219','Gelfand','The Radio Emission, X-ray Emission, and Hydrodynamics of G328.4+0.2: A
  Comprehensive Analysis of a Luminous Pulsar Wind Nebula, its Neutron Star,
  and the Progenitor Supernova Explosion','astro-ph','2009-06-23','27','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518498','NULL','v1','2007-04-02','NULL',' Hughes. John P. ','704.0219','Gelfand','The Radio Emission, X-ray Emission, and Hydrodynamics of G328.4+0.2: A
  Comprehensive Analysis of a Luminous Pulsar Wind Nebula, its Neutron Star,
  and the Progenitor Supernova Explosion','astro-ph','2009-06-23','27','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518498','NULL','v1','2007-04-02','NULL',' Camilo. Fernando. ','704.0219','Gelfand','The Radio Emission, X-ray Emission, and Hydrodynamics of G328.4+0.2: A
  Comprehensive Analysis of a Luminous Pulsar Wind Nebula, its Neutron Star,
  and the Progenitor Supernova Explosion','astro-ph','2009-06-23','27','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1142/S0218301307009117','NULL','v1','2007-04-02','NULL','Ulery. Jason Glyndwr. for the STAR Collaboration','704.022','Ulery','Three Particle Correlations from STAR','nucl-ex','2008-11-26','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/s10714-007-0472-9 10.1142/S0218271808012449','NULL','v1','2007-04-02','NULL','Krauss. Lawrence M. ','704.0221','Krauss','The Return of a Static Universe and the End of Cosmology','astro-ph','2009-06-23','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/s10714-007-0472-9 10.1142/S0218271808012449','NULL','v1','2007-04-02','NULL',' Scherrer. Robert J. ','704.0221','Krauss','The Return of a Static Universe and the End of Cosmology','astro-ph','2009-06-23','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/s10714-007-0472-9 10.1142/S0218271808012449','NULL','v2','2007-05-23','NULL','Krauss. Lawrence M. ','704.0221','Krauss','The Return of a Static Universe and the End of Cosmology','astro-ph','2009-06-23','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/s10714-007-0472-9 10.1142/S0218271808012449','NULL','v2','2007-05-23','NULL',' Scherrer. Robert J. ','704.0221','Krauss','The Return of a Static Universe and the End of Cosmology','astro-ph','2009-06-23','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/s10714-007-0472-9 10.1142/S0218271808012449','NULL','v3','2007-06-27','NULL','Krauss. Lawrence M. ','704.0221','Krauss','The Return of a Static Universe and the End of Cosmology','astro-ph','2009-06-23','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/s10714-007-0472-9 10.1142/S0218271808012449','NULL','v3','2007-06-27','NULL',' Scherrer. Robert J. ','704.0221','Krauss','The Return of a Static Universe and the End of Cosmology','astro-ph','2009-06-23','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2757426','NULL','v1','2007-04-02','NULL','Sanchez-Conde. Miguel A. ','704.0222','Mr.','Dark Matter annihilation in Draco: new considerations on the expected
  gamma flux','astro-ph','2009-06-23','2','2','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1745-3933.2007.00319.x','NULL','v1','2007-04-02','NULL','Lou. Yu-Qing. ','704.0223','Bian','Magnetohydrodynamic Rebound Shocks of Supernovae','astro-ph','2009-06-23','5','1','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1745-3933.2007.00319.x','NULL','v1','2007-04-02','NULL',' Wang. Wei-Gang. ','704.0223','Bian','Magnetohydrodynamic Rebound Shocks of Supernovae','astro-ph','2009-06-23','5','1','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1142/S0218301307007374','NULL','v1','2007-04-02','NULL','Ulery. Jason Glyndwr. for the STAR Collaboration','704.0224','Ulery','Are There Mach Cones in Heavy Ion Collisions? Three-Particle
  Correlations from STAR','nucl-ex','2008-11-26','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2757312','NULL','v1','2007-04-02','NULL','Kashlinsky. A. ','704.0225','Kashlinsky','Exploring First Stars Era with GLAST','astro-ph','2009-06-23','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2757312','NULL','v1','2007-04-02','NULL',' Band. D. ','704.0225','Kashlinsky','Exploring First Stars Era with GLAST','astro-ph','2009-06-23','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066713','NULL','v1','2007-04-02','NULL','Tombesi. F. ','704.0226','Tombesi','Correlated modulation between the redshifted Fe K alpha line and the
  continuum emission in NGC 3783','astro-ph','2009-11-13','8','7','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066713','NULL','v1','2007-04-02','NULL',' De Marco. B. ','704.0226','Tombesi','Correlated modulation between the redshifted Fe K alpha line and the
  continuum emission in NGC 3783','astro-ph','2009-11-13','8','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066713','NULL','v1','2007-04-02','NULL',' Iwasawa. K. ','704.0226','Tombesi','Correlated modulation between the redshifted Fe K alpha line and the
  continuum emission in NGC 3783','astro-ph','2009-11-13','8','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066713','NULL','v1','2007-04-02','NULL',' Cappi. M. ','704.0226','Tombesi','Correlated modulation between the redshifted Fe K alpha line and the
  continuum emission in NGC 3783','astro-ph','2009-11-13','8','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066713','NULL','v1','2007-04-02','NULL',' Dadina. M. ','704.0226','Tombesi','Correlated modulation between the redshifted Fe K alpha line and the
  continuum emission in NGC 3783','astro-ph','2009-11-13','8','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066713','NULL','v1','2007-04-02','NULL',' Ponti. G. ','704.0226','Tombesi','Correlated modulation between the redshifted Fe K alpha line and the
  continuum emission in NGC 3783','astro-ph','2009-11-13','8','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066713','NULL','v1','2007-04-02','NULL',' Miniutti. G. ','704.0226','Tombesi','Correlated modulation between the redshifted Fe K alpha line and the
  continuum emission in NGC 3783','astro-ph','2009-11-13','8','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066713','NULL','v1','2007-04-02','NULL',' Palumbo. G. G. C. ','704.0226','Tombesi','Correlated modulation between the redshifted Fe K alpha line and the
  continuum emission in NGC 3783','astro-ph','2009-11-13','8','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1209/0295-5075/78/10010','NULL','v1','2007-04-02','NULL','Nieuwenhuizen. Theo M. ','704.0228','Nieuwenhuizen','Einstein vs Maxwell: Is gravitation a curvature of space, a field in
  flat space, or both?','gr-qc','2008-11-26','5','1','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1112/blms/bdn071','NULL','v1','2007-04-02','NULL','Ortega-Cerda. Joaquim. ','704.0231','Ortega-Cerda','Interpolating and sampling sequences in finite Riemann surfaces','math.CV','2014-02-26','5','1','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.130402','NULL','v1','2007-04-02','NULL','Tomadin. Andrea. ','704.0233','Wimberger','Many-body interband tunneling as a witness for complex dynamics in the
  Bose-Hubbard model','cond-mat.other','2007-10-10','4','3','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.130402','NULL','v1','2007-04-02','NULL',' Mannella. Riccardo. ','704.0233','Wimberger','Many-body interband tunneling as a witness for complex dynamics in the
  Bose-Hubbard model','cond-mat.other','2007-10-10','4','3','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.130402','NULL','v1','2007-04-02','NULL',' Wimberger. Sandro. ','704.0233','Wimberger','Many-body interband tunneling as a witness for complex dynamics in the
  Bose-Hubbard model','cond-mat.other','2007-10-10','4','3','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/05/037','NULL','v1','2007-04-02','NULL','Rizzo. Thomas G. ','704.0235','Rizzo','The Determination of the Helicity of $W$ Boson Couplings at the LHC','hep-ph','2009-11-13','29','11','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/05/037','NULL','v2','2007-04-09','NULL','Rizzo. Thomas G. ','704.0235','Rizzo','The Determination of the Helicity of $W$ Boson Couplings at the LHC','hep-ph','2009-11-13','29','11','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/05/037','NULL','v3','2007-05-03','NULL','Rizzo. Thomas G. ','704.0235','Rizzo','The Determination of the Helicity of $W$ Boson Couplings at the LHC','hep-ph','2009-11-13','29','11','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/05/037','NULL','v4','2007-05-07','NULL','Rizzo. Thomas G. ','704.0235','Rizzo','The Determination of the Helicity of $W$ Boson Couplings at the LHC','hep-ph','2009-11-13','29','11','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1143/PTPS.169.196','NULL','v1','2007-04-02','NULL','Mauche. Christopher W. Lawrencen  Livermore Natl Lab. Liedahl. Duane A. Lawrencen  Livermore Natl Lab. Akiyama. Shizuka. Lawrencen  Livermore Natl Lab. Plewa. Tomasz. University of Chicago','704.0237','Mauche','Hydrodynamic and Spectral Simulations of HMXB Winds','astro-ph','2009-06-23','4','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2734962','NULL','v1','2007-04-02','NULL','Dzubiella. Joachim. ','704.0239','Dzubiella','Interface dynamics of microscopic cavities in water','cond-mat.soft','2009-11-13','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1146/annurev.nucl.57.090506.123120','NULL','v1','2007-04-02','NULL','Son. D. T. ','704.024','Son','Viscosity, Black Holes, and Quantum Field Theory','hep-th','2008-11-26','23','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1146/annurev.nucl.57.090506.123120','NULL','v1','2007-04-02','NULL',' Starinets. A. O. ','704.024','Son','Viscosity, Black Holes, and Quantum Field Theory','hep-th','2008-11-26','23','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1146/annurev.nucl.57.090506.123120','NULL','v2','2007-07-11','NULL','Son. D. T. ','704.024','Son','Viscosity, Black Holes, and Quantum Field Theory','hep-th','2008-11-26','23','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1146/annurev.nucl.57.090506.123120','NULL','v2','2007-07-11','NULL',' Starinets. A. O. ','704.024','Son','Viscosity, Black Holes, and Quantum Field Theory','hep-th','2008-11-26','23','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/0953-8984/17/37/005','NULL','v1','2007-04-02','NULL','Hague. J. P. ','704.0241','Hague','Superconducting states of the quasi-2D Holstein model: Effects of vertex
  and non-local corrections','cond-mat.supr-con','2015-05-13','14','10','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1017/S1743921307012604','NULL','v1','2007-04-02','NULL','Fish. Vincent L. NRAO','704.0242','Fish','Masers and star formation','astro-ph','2009-11-13','10','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00175-6','NULL','v1','2007-04-02','NULL','Bauer. J. ','704.0243','Bauer','Renormalized quasiparticles in antiferromagnetic states of the Hubbard
  model','cond-mat.str-el','2009-11-13','15','17','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00175-6','NULL','v1','2007-04-02','NULL',' Hewson. A. C. ','704.0243','Bauer','Renormalized quasiparticles in antiferromagnetic states of the Hubbard
  model','cond-mat.str-el','2009-11-13','15','17','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00175-6','NULL','v2','2007-06-22','NULL','Bauer. J. ','704.0243','Bauer','Renormalized quasiparticles in antiferromagnetic states of the Hubbard
  model','cond-mat.str-el','2009-11-13','15','17','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00175-6','NULL','v2','2007-06-22','NULL',' Hewson. A. C. ','704.0243','Bauer','Renormalized quasiparticles in antiferromagnetic states of the Hubbard
  model','cond-mat.str-el','2009-11-13','15','17','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.100401','NULL','v1','2007-04-02','NULL','Sharma. S. ','704.0244','Sharma','Comparison of exact-exchange calculations for solids in
  current-spin-density- and spin-density-functional theory','cond-mat.mtrl-sci','2009-11-13','4','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.100401','NULL','v1','2007-04-02','NULL',' Pittalis. S. ','704.0244','Sharma','Comparison of exact-exchange calculations for solids in
  current-spin-density- and spin-density-functional theory','cond-mat.mtrl-sci','2009-11-13','4','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.100401','NULL','v1','2007-04-02','NULL',' Kurth. S. ','704.0244','Sharma','Comparison of exact-exchange calculations for solids in
  current-spin-density- and spin-density-functional theory','cond-mat.mtrl-sci','2009-11-13','4','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.100401','NULL','v1','2007-04-02','NULL',' Shallcross. S. ','704.0244','Sharma','Comparison of exact-exchange calculations for solids in
  current-spin-density- and spin-density-functional theory','cond-mat.mtrl-sci','2009-11-13','4','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.100401','NULL','v1','2007-04-02','NULL',' Dewhurst. J. K. ','704.0244','Sharma','Comparison of exact-exchange calculations for solids in
  current-spin-density- and spin-density-functional theory','cond-mat.mtrl-sci','2009-11-13','4','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.100401','NULL','v1','2007-04-02','NULL',' Gross. E. K. U. ','704.0244','Sharma','Comparison of exact-exchange calculations for solids in
  current-spin-density- and spin-density-functional theory','cond-mat.mtrl-sci','2009-11-13','4','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.100401','NULL','v2','2007-06-04','NULL','Sharma. S. ','704.0244','Sharma','Comparison of exact-exchange calculations for solids in
  current-spin-density- and spin-density-functional theory','cond-mat.mtrl-sci','2009-11-13','4','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.100401','NULL','v2','2007-06-04','NULL',' Pittalis. S. ','704.0244','Sharma','Comparison of exact-exchange calculations for solids in
  current-spin-density- and spin-density-functional theory','cond-mat.mtrl-sci','2009-11-13','4','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.100401','NULL','v2','2007-06-04','NULL',' Kurth. S. ','704.0244','Sharma','Comparison of exact-exchange calculations for solids in
  current-spin-density- and spin-density-functional theory','cond-mat.mtrl-sci','2009-11-13','4','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.100401','NULL','v2','2007-06-04','NULL',' Shallcross. S. ','704.0244','Sharma','Comparison of exact-exchange calculations for solids in
  current-spin-density- and spin-density-functional theory','cond-mat.mtrl-sci','2009-11-13','4','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.100401','NULL','v2','2007-06-04','NULL',' Dewhurst. J. K. ','704.0244','Sharma','Comparison of exact-exchange calculations for solids in
  current-spin-density- and spin-density-functional theory','cond-mat.mtrl-sci','2009-11-13','4','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.100401','NULL','v2','2007-06-04','NULL',' Gross. E. K. U. ','704.0244','Sharma','Comparison of exact-exchange calculations for solids in
  current-spin-density- and spin-density-functional theory','cond-mat.mtrl-sci','2009-11-13','4','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/002','NULL','v1','2007-04-02','NULL','Brandhuber. Andreas. ','704.0245','Zoubos','One-loop MHV Rules and Pure Yang-Mills','hep-th','2008-11-26','40','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/002','NULL','v1','2007-04-02','NULL',' Spence. Bill. ','704.0245','Zoubos','One-loop MHV Rules and Pure Yang-Mills','hep-th','2008-11-26','40','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/002','NULL','v1','2007-04-02','NULL',' Travaglini. Gabriele. ','704.0245','Zoubos','One-loop MHV Rules and Pure Yang-Mills','hep-th','2008-11-26','40','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/002','NULL','v1','2007-04-02','NULL',' Zoubos. Konstantinos. ','704.0245','Zoubos','One-loop MHV Rules and Pure Yang-Mills','hep-th','2008-11-26','40','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/002','NULL','v2','2007-07-06','NULL','Brandhuber. Andreas. ','704.0245','Zoubos','One-loop MHV Rules and Pure Yang-Mills','hep-th','2008-11-26','40','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/002','NULL','v2','2007-07-06','NULL',' Spence. Bill. ','704.0245','Zoubos','One-loop MHV Rules and Pure Yang-Mills','hep-th','2008-11-26','40','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/002','NULL','v2','2007-07-06','NULL',' Travaglini. Gabriele. ','704.0245','Zoubos','One-loop MHV Rules and Pure Yang-Mills','hep-th','2008-11-26','40','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/002','NULL','v2','2007-07-06','NULL',' Zoubos. Konstantinos. ','704.0245','Zoubos','One-loop MHV Rules and Pure Yang-Mills','hep-th','2008-11-26','40','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1134/1.1777636','NULL','v1','2007-04-02','NULL','Zimbovskaya. Natalya A. ','704.0246','Zimbovskaya','Fermi-liquid effects in the transresistivity in quantum Hall double
  layers near $nu\= 1/2 $','cond-mat.mes-hall','2007-05-23','5','2','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/046','NULL','v1','2007-04-02','NULL','Cacciatori. S. L. ','704.0247','Roest','Geometry of four-dimensional Killing spinors','hep-th','2008-11-26','70','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/046','NULL','v1','2007-04-02','NULL',' Caldarelli. M. M. ','704.0247','Roest','Geometry of four-dimensional Killing spinors','hep-th','2008-11-26','70','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/046','NULL','v1','2007-04-02','NULL',' Klemm. D. ','704.0247','Roest','Geometry of four-dimensional Killing spinors','hep-th','2008-11-26','70','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/046','NULL','v1','2007-04-02','NULL',' Mansi. D. S. ','704.0247','Roest','Geometry of four-dimensional Killing spinors','hep-th','2008-11-26','70','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/046','NULL','v1','2007-04-02','NULL',' Roest. D. ','704.0247','Roest','Geometry of four-dimensional Killing spinors','hep-th','2008-11-26','70','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/046','NULL','v2','2007-05-15','NULL','Cacciatori. S. L. ','704.0247','Roest','Geometry of four-dimensional Killing spinors','hep-th','2008-11-26','70','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/046','NULL','v2','2007-05-15','NULL',' Caldarelli. M. M. ','704.0247','Roest','Geometry of four-dimensional Killing spinors','hep-th','2008-11-26','70','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/046','NULL','v2','2007-05-15','NULL',' Klemm. D. ','704.0247','Roest','Geometry of four-dimensional Killing spinors','hep-th','2008-11-26','70','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/046','NULL','v2','2007-05-15','NULL',' Mansi. D. S. ','704.0247','Roest','Geometry of four-dimensional Killing spinors','hep-th','2008-11-26','70','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/07/046','NULL','v2','2007-05-15','NULL',' Roest. D. ','704.0247','Roest','Geometry of four-dimensional Killing spinors','hep-th','2008-11-26','70','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00203-7','NULL','v1','2007-04-02','NULL','Ortloff. Jutta. ','704.0249','Potthoff','Non-perturbative conserving approximations and Luttingers sum rule','cond-mat.str-el','2009-11-13','13','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00203-7','NULL','v1','2007-04-02','NULL',' Balzer. Matthias. ','704.0249','Potthoff','Non-perturbative conserving approximations and Luttingers sum rule','cond-mat.str-el','2009-11-13','13','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00203-7','NULL','v1','2007-04-02','NULL',' Potthoff. Michael. ','704.0249','Potthoff','Non-perturbative conserving approximations and Luttingers sum rule','cond-mat.str-el','2009-11-13','13','10','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00203-7','NULL','v2','2007-07-04','NULL','Ortloff. Jutta. ','704.0249','Potthoff','Non-perturbative conserving approximations and Luttingers sum rule','cond-mat.str-el','2009-11-13','13','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00203-7','NULL','v2','2007-07-04','NULL',' Balzer. Matthias. ','704.0249','Potthoff','Non-perturbative conserving approximations and Luttingers sum rule','cond-mat.str-el','2009-11-13','13','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00203-7','NULL','v2','2007-07-04','NULL',' Potthoff. Michael. ','704.0249','Potthoff','Non-perturbative conserving approximations and Luttingers sum rule','cond-mat.str-el','2009-11-13','13','10','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physb.2007.10.365','NULL','v1','2007-04-02','NULL','Pankov. S. ','704.025','Dobrosavljevic','2D-MIT as self-doping of a Wigner-Mott insulator','cond-mat.str-el','2008-03-07','2','1','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physb.2007.10.365','NULL','v1','2007-04-02','NULL',' Dobrosavljevic. V. ','704.025','Dobrosavljevic','2D-MIT as self-doping of a Wigner-Mott insulator','cond-mat.str-el','2008-03-07','2','1','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.042309','NULL','v1','2007-04-02','NULL','Gour. Gilad. ','704.0251','Gour','Entanglement of Subspaces and Error Correcting Codes','quant-ph','2011-11-09','8','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.042309','NULL','v1','2007-04-02','NULL',' Wallach. Nolan R. ','704.0251','Gour','Entanglement of Subspaces and Error Correcting Codes','quant-ph','2011-11-09','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.042309','NULL','v2','2007-10-05','NULL','Gour. Gilad. ','704.0251','Gour','Entanglement of Subspaces and Error Correcting Codes','quant-ph','2011-11-09','8','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.042309','NULL','v2','2007-10-05','NULL',' Wallach. Nolan R. ','704.0251','Gour','Entanglement of Subspaces and Error Correcting Codes','quant-ph','2011-11-09','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL','Harvey. Paul M. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Rebull. Luisa M. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Brooke. Tim. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Spiesman. William J. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Chapman. Nicholas. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Huard. Tracy L. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Evans. Neal J. II. Cieza. Lucas. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Lai. Shih-Ping. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Allen. Lori E. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Mundy. Lee G. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Padgett. Deborah L. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Sargent. Anneila I. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Stapelfeldt. Karl R. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Myers. Philip C. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' van Dishoeck. Ewine F. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Blake. Geoffrey A. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518647','NULL','v1','2007-04-02','NULL',' Koerner. David W. ','704.0253','Harvey','The Spitzer c2d Survey of Large, Nearby, Interstellar Clouds VIII.
  Serpens Observed with MIPS','astro-ph','2010-03-18','8','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.115013','NULL','v1','2007-04-02','NULL','Alves. Alexandre. ','704.0254','Alves','Unravelling the sbottom spin at the CERN LHC','hep-ph','2008-11-26','9','11','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.115013','NULL','v1','2007-04-02','NULL',' Eboli. Oscar. ','704.0254','Alves','Unravelling the sbottom spin at the CERN LHC','hep-ph','2008-11-26','9','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/523628','NULL','v1','2007-04-02','NULL','Marin. Felipe. Chicago. KICP. Wechsler. Risa. KIPAC. Stanford. Frieman. Joshua. Chicago. KICP and Fermilab. Nichol. Robert. ICG. Portsmouth','704.0255','Marin','Modeling the three-point correlation function','astro-ph','2008-11-26','12','11','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/523628','NULL','v2','2007-11-06','NULL','Marin. Felipe. Chicago. KICP. Wechsler. Risa. KIPAC. Stanford. Frieman. Joshua. Chicago. KICP and Fermilab. Nichol. Robert. ICG. Portsmouth','704.0255','Marin','Modeling the three-point correlation function','astro-ph','2008-11-26','12','11','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518588','NULL','v1','2007-04-02','NULL','Harvey. Paul M. ','704.0256','Harvey','Multi-spectral Observations of Lunar Occultations: I. Resolving The Dust
  Shell Around AFGL 5440','astro-ph','2009-11-13','12','11','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518588','NULL','v1','2007-04-02','NULL',' Oldag. Andrew. ','704.0256','Harvey','Multi-spectral Observations of Lunar Occultations: I. Resolving The Dust
  Shell Around AFGL 5440','astro-ph','2009-11-13','12','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00296-x','NULL','v1','2007-04-02','NULL','Guerra. Diego. ','704.0258','Nicolas','Correlation functions in the Non Perturbative Renormalization Group and
  field expansion','hep-th','2008-11-26','20','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00296-x','NULL','v1','2007-04-02','NULL',' Mendez-Galain. Ramon. ','704.0258','Nicolas','Correlation functions in the Non Perturbative Renormalization Group and
  field expansion','hep-th','2008-11-26','20','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00296-x','NULL','v1','2007-04-02','NULL',' Wschebor. Nicolas. ','704.0258','Nicolas','Correlation functions in the Non Perturbative Renormalization Group and
  field expansion','hep-th','2008-11-26','20','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00296-x','NULL','v2','2007-10-23','NULL','Guerra. Diego. ','704.0258','Nicolas','Correlation functions in the Non Perturbative Renormalization Group and
  field expansion','hep-th','2008-11-26','20','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00296-x','NULL','v2','2007-10-23','NULL',' Mendez-Galain. Ramon. ','704.0258','Nicolas','Correlation functions in the Non Perturbative Renormalization Group and
  field expansion','hep-th','2008-11-26','20','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00296-x','NULL','v2','2007-10-23','NULL',' Wschebor. Nicolas. ','704.0258','Nicolas','Correlation functions in the Non Perturbative Renormalization Group and
  field expansion','hep-th','2008-11-26','20','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/587859','NULL','v1','2007-04-02','NULL','Randall. Scott W. ','704.0261','Randall','Constraints on the Self-Interaction Cross-Section of Dark Matter from
  Numerical Simulations of the Merging Galaxy Cluster 1E 0657-5','astro-ph','2009-11-13','20','6','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/587859','NULL','v1','2007-04-02','NULL',' Markevitch. Maxim. ','704.0261','Randall','Constraints on the Self-Interaction Cross-Section of Dark Matter from
  Numerical Simulations of the Merging Galaxy Cluster 1E 0657-5','astro-ph','2009-11-13','20','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/587859','NULL','v1','2007-04-02','NULL',' Clowe. Douglas. ','704.0261','Randall','Constraints on the Self-Interaction Cross-Section of Dark Matter from
  Numerical Simulations of the Merging Galaxy Cluster 1E 0657-5','astro-ph','2009-11-13','20','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/587859','NULL','v1','2007-04-02','NULL',' Gonzalez. Anthony H. ','704.0261','Randall','Constraints on the Self-Interaction Cross-Section of Dark Matter from
  Numerical Simulations of the Merging Galaxy Cluster 1E 0657-5','astro-ph','2009-11-13','20','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/587859','NULL','v1','2007-04-02','NULL',' Bradac. Marusa. ','704.0261','Randall','Constraints on the Self-Interaction Cross-Section of Dark Matter from
  Numerical Simulations of the Merging Galaxy Cluster 1E 0657-5','astro-ph','2009-11-13','20','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v1','2007-04-03','NULL','Argurio. Riccardo. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v1','2007-04-03','NULL',' Bertolini. Matteo. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v1','2007-04-03','NULL',' Ferretti. Gabriele. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v1','2007-04-03','NULL',' Lerda. Alberto. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v1','2007-04-03','NULL',' Petersson. Christoffer. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v2','2007-04-04','NULL','Argurio. Riccardo. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v2','2007-04-04','NULL',' Bertolini. Matteo. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v2','2007-04-04','NULL',' Ferretti. Gabriele. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v2','2007-04-04','NULL',' Lerda. Alberto. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v2','2007-04-04','NULL',' Petersson. Christoffer. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v3','2007-06-18','NULL','Argurio. Riccardo. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v3','2007-06-18','NULL',' Bertolini. Matteo. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v3','2007-06-18','NULL',' Ferretti. Gabriele. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v3','2007-06-18','NULL',' Lerda. Alberto. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/06/067','NULL','v3','2007-06-18','NULL',' Petersson. Christoffer. ','704.0262','Bertolini','Stringy Instantons at Orbifold Singularities','hep-th','2009-11-13','29','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physleta.2007.04.054','NULL','v1','2007-04-02','NULL','Eyink. Gregory L. ','704.0263','L','Turbulent Diffusion of Lines and Circulations','physics.flu-dyn','2009-11-13','13','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL','Dolcini. A. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Farfanelli. F. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Ciprini. S. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Treves. A. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Covino. S. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Tosti. G. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Pian. E. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Sbarufatti. B. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Molinari. E. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Chincarini. G. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Zerbi. F. M. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Malaspina. G. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Conconi. P. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Nicastro. L. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Palazzi. E. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Testa. V. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Vitali. F. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Antonelli. L. A. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Danziger. J. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Tagliaferri. G. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Meurs. E. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Vergani. S. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Fernandez-Soto. A. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Distefano. E. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' Cutispoto. G. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v1','2007-04-02','NULL',' DAlessio. F. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL','Dolcini. A. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Farfanelli. F. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Ciprini. S. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Treves. A. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Covino. S. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Tosti. G. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Pian. E. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Sbarufatti. B. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Molinari. E. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Chincarini. G. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Zerbi. F. M. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Malaspina. G. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Conconi. P. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Nicastro. L. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Palazzi. E. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Testa. V. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Vitali. F. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Antonelli. L. A. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Danziger. J. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Tagliaferri. G. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Meurs. E. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Vergani. S. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Fernandez-Soto. A. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Distefano. E. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' Cutispoto. G. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066477','NULL','v2','2007-10-30','NULL',' DAlessio. F. ','704.0265','Covino','REM near-IR and optical multiband observations of PKS2155-304 in 2005','astro-ph','2009-11-16','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2803592','NULL','v1','2007-04-02','NULL','Hoffman. Jennifer L. ','704.0266','Hoffman','Supernova Polarization and the Type IIn Classification','astro-ph','2009-06-23','5','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2803592','NULL','v2','2007-04-30','NULL','Hoffman. Jennifer L. ','704.0266','Hoffman','Supernova Polarization and the Type IIn Classification','astro-ph','2009-06-23','5','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518820','NULL','v1','2007-04-02','NULL','Froning. C. S. ','704.0267','Froning','Near-Infrared Spectra of the Black Hole X-Ray Binary, A0620-00','astro-ph','2009-06-23','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518820','NULL','v1','2007-04-02','NULL',' Robinson. E. L. ','704.0267','Froning','Near-Infrared Spectra of the Black Hole X-Ray Binary, A0620-00','astro-ph','2009-06-23','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518820','NULL','v1','2007-04-02','NULL',' Bitner. M. A. ','704.0267','Froning','Near-Infrared Spectra of the Black Hole X-Ray Binary, A0620-00','astro-ph','2009-06-23','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518210','NULL','v1','2007-04-03','NULL','Joshi. M. ','704.0269','Joshi','Modeling the Spectral Energy Distribution and Variability of 3C 66A
  during the WEBT campaign of 2003 -- 2004','astro-ph','2009-06-23','23','9','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518210','NULL','v1','2007-04-03','NULL',' Boettcher. M. ','704.0269','Joshi','Modeling the Spectral Energy Distribution and Variability of 3C 66A
  during the WEBT campaign of 2003 -- 2004','astro-ph','2009-06-23','23','9','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077068','NULL','v1','2007-04-02','NULL','Bonfils. X. ','704.027','Bonfils','The HARPS search for southern extra-solar planets. X. A m sin i \= 11
  Mearth planet around the nearby spotted M dwarf GJ 674','astro-ph','2009-11-13','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077068','NULL','v1','2007-04-02','NULL',' Mayor. M. ','704.027','Bonfils','The HARPS search for southern extra-solar planets. X. A m sin i \= 11
  Mearth planet around the nearby spotted M dwarf GJ 674','astro-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077068','NULL','v1','2007-04-02','NULL',' Delfosse. X. ','704.027','Bonfils','The HARPS search for southern extra-solar planets. X. A m sin i \= 11
  Mearth planet around the nearby spotted M dwarf GJ 674','astro-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077068','NULL','v1','2007-04-02','NULL',' Forveille. T. ','704.027','Bonfils','The HARPS search for southern extra-solar planets. X. A m sin i \= 11
  Mearth planet around the nearby spotted M dwarf GJ 674','astro-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077068','NULL','v1','2007-04-02','NULL',' Gillon. M. ','704.027','Bonfils','The HARPS search for southern extra-solar planets. X. A m sin i \= 11
  Mearth planet around the nearby spotted M dwarf GJ 674','astro-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077068','NULL','v1','2007-04-02','NULL',' Perrier. C. ','704.027','Bonfils','The HARPS search for southern extra-solar planets. X. A m sin i \= 11
  Mearth planet around the nearby spotted M dwarf GJ 674','astro-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077068','NULL','v1','2007-04-02','NULL',' Udry. S. ','704.027','Bonfils','The HARPS search for southern extra-solar planets. X. A m sin i \= 11
  Mearth planet around the nearby spotted M dwarf GJ 674','astro-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077068','NULL','v1','2007-04-02','NULL',' Bouchy. F. ','704.027','Bonfils','The HARPS search for southern extra-solar planets. X. A m sin i \= 11
  Mearth planet around the nearby spotted M dwarf GJ 674','astro-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077068','NULL','v1','2007-04-02','NULL',' Lovis. C. ','704.027','Bonfils','The HARPS search for southern extra-solar planets. X. A m sin i \= 11
  Mearth planet around the nearby spotted M dwarf GJ 674','astro-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077068','NULL','v1','2007-04-02','NULL',' Pepe. F. ','704.027','Bonfils','The HARPS search for southern extra-solar planets. X. A m sin i \= 11
  Mearth planet around the nearby spotted M dwarf GJ 674','astro-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077068','NULL','v1','2007-04-02','NULL',' Queloz. D. ','704.027','Bonfils','The HARPS search for southern extra-solar planets. X. A m sin i \= 11
  Mearth planet around the nearby spotted M dwarf GJ 674','astro-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077068','NULL','v1','2007-04-02','NULL',' Santos. N. C. ','704.027','Bonfils','The HARPS search for southern extra-solar planets. X. A m sin i \= 11
  Mearth planet around the nearby spotted M dwarf GJ 674','astro-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077068','NULL','v1','2007-04-02','NULL',' Bertaux. J. -L. ','704.027','Bonfils','The HARPS search for southern extra-solar planets. X. A m sin i \= 11
  Mearth planet around the nearby spotted M dwarf GJ 674','astro-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevE.77.021914','NULL','v1','2007-04-02','NULL','Brigatti. E. ','704.0271','Brigatti','An individual based model with global competition interaction:
  fluctuations effects in pattern formation','cond-mat.stat-mech','2009-11-13','9','9','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevE.77.021914','NULL','v1','2007-04-02','NULL',' Schwammle. V. ','704.0271','Brigatti','An individual based model with global competition interaction:
  fluctuations effects in pattern formation','cond-mat.stat-mech','2009-11-13','9','9','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevE.77.021914','NULL','v1','2007-04-02','NULL',' Neto. Minos A. ','704.0271','Brigatti','An individual based model with global competition interaction:
  fluctuations effects in pattern formation','cond-mat.stat-mech','2009-11-13','9','9','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevE.77.021914','NULL','v2','2008-02-27','NULL','Brigatti. E. ','704.0271','Brigatti','An individual based model with global competition interaction:
  fluctuations effects in pattern formation','cond-mat.stat-mech','2009-11-13','9','9','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevE.77.021914','NULL','v2','2008-02-27','NULL',' Schwammle. V. ','704.0271','Brigatti','An individual based model with global competition interaction:
  fluctuations effects in pattern formation','cond-mat.stat-mech','2009-11-13','9','9','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevE.77.021914','NULL','v2','2008-02-27','NULL',' Neto. Minos A. ','704.0271','Brigatti','An individual based model with global competition interaction:
  fluctuations effects in pattern formation','cond-mat.stat-mech','2009-11-13','9','9','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518553','NULL','v1','2007-04-02','NULL','Rodriguez. Monica Ivette. ','704.0272','Rodriguez','A Comparison between Anomalous 6-cm H$_2$CO Absorption and CO(1-0)
  Emission in the L1204/S140','astro-ph','2009-06-23','9','6','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518553','NULL','v1','2007-04-02','NULL',' Wiklind. Tommy. ','704.0272','Rodriguez','A Comparison between Anomalous 6-cm H$_2$CO Absorption and CO(1-0)
  Emission in the L1204/S140','astro-ph','2009-06-23','9','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518553','NULL','v1','2007-04-02','NULL',' Allen. Ronald J. ','704.0272','Rodriguez','A Comparison between Anomalous 6-cm H$_2$CO Absorption and CO(1-0)
  Emission in the L1204/S140','astro-ph','2009-06-23','9','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518553','NULL','v1','2007-04-02','NULL',' Escalante. Vladimir. ','704.0272','Rodriguez','A Comparison between Anomalous 6-cm H$_2$CO Absorption and CO(1-0)
  Emission in the L1204/S140','astro-ph','2009-06-23','9','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518553','NULL','v1','2007-04-02','NULL',' Loinard. Laurent. ','704.0272','Rodriguez','A Comparison between Anomalous 6-cm H$_2$CO Absorption and CO(1-0)
  Emission in the L1204/S140','astro-ph','2009-06-23','9','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/s00220-008-0488-3','NULL','v1','2007-04-02','NULL','Cimasoni. David. ','704.0273','Cimasoni','Dimers on surface graphs and spin structures. II','math-ph','2012-08-09','23','3','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/s00220-008-0488-3','NULL','v1','2007-04-02','NULL',' Reshetikhin. Nicolai. ','704.0273','Cimasoni','Dimers on surface graphs and spin structures. II','math-ph','2012-08-09','23','3','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.cpc.2007.03.008','NULL','v1','2007-04-02','NULL','von Hippel. Georg M. ','704.0274','Hippel','New version announcement for TaylUR, an arbitrary-order diagonal
  automatic differentiation package for Fortran 95','physics.comp-ph','2007-05-23','3','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.2140/pjm.2008.236.223','NULL','v1','2007-04-02','NULL','Bergman. George M. U.C.Berkeley','704.0275','Bergman','Mapping radii of metric spaces','math.MG','2021-10-15','24','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.2140/pjm.2008.236.223','NULL','v2','2008-03-28','NULL','Bergman. George M. U.C.Berkeley','704.0275','Bergman','Mapping radii of metric spaces','math.MG','2021-10-15','24','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518711','NULL','v1','2007-04-02','NULL','Wolleben. M. ','704.0276','Wolleben','A New Model For The Loop-I (The North Polar Spur) Region','astro-ph','2009-06-23','17','6','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1112/jtopol/jtn010','NULL','v1','2007-04-02','NULL','Kalai. Gil. ','704.0277','Meshulam','Leray numbers of projections and a topological Helly type theorem','math.CO','2014-02-26','9','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1112/jtopol/jtn010','NULL','v1','2007-04-02','NULL',' Meshulam. Roy. ','704.0277','Meshulam','Leray numbers of projections and a topological Helly type theorem','math.CO','2014-02-26','9','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/0264-9381/24/13/009','NULL','v1','2007-04-02','NULL','Khavkine. Igor. ','704.0278','Khavkine','q-Deformed spin foam models of quantum gravity','gr-qc','2008-11-26','21','6','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/0264-9381/24/13/009','NULL','v1','2007-04-02','NULL',' Christensen. J. Daniel. ','704.0278','Khavkine','q-Deformed spin foam models of quantum gravity','gr-qc','2008-11-26','21','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518558','NULL','v1','2007-04-02','NULL','Petric. A. O. ','704.0279','Petric','HI velocity dispersion in NGC 1058','astro-ph','2009-06-23','29','16','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518558','NULL','v1','2007-04-02','NULL',' Rupen. M. P. ','704.0279','Petric','HI velocity dispersion in NGC 1058','astro-ph','2009-06-23','29','16','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/978-1-4020-6544-6_13','NULL','v1','2007-04-02','NULL','Webbink. Ronald F. University of Illinois at Urbana-Champaign','704.028','Webbink','Common Envelope Evolution Redux','astro-ph','2015-11-11','25','6','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124008','NULL','v1','2007-04-02','NULL','Kao. Hsien-chung. ','704.0284','Kao','Second Order Perturbative Calculation of Quasinormal Modes of
  Schwarzschild Black Holes','hep-th','2008-11-26','12','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.ssc.2007.04.023','NULL','v1','2007-04-03','NULL','de Heer. Walt A. ','704.0285','Wu','Epitaxial graphene','cond-mat.mes-hall','2008-10-16','19','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.ssc.2007.04.023','NULL','v1','2007-04-03','NULL',' Berger. Claire. ','704.0285','Wu','Epitaxial graphene','cond-mat.mes-hall','2008-10-16','19','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.ssc.2007.04.023','NULL','v1','2007-04-03','NULL',' Wu. Xiaosong. ','704.0285','Wu','Epitaxial graphene','cond-mat.mes-hall','2008-10-16','19','11','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.ssc.2007.04.023','NULL','v1','2007-04-03','NULL',' First. Phillip N. ','704.0285','Wu','Epitaxial graphene','cond-mat.mes-hall','2008-10-16','19','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.ssc.2007.04.023','NULL','v1','2007-04-03','NULL',' Conrad. Edward H. ','704.0285','Wu','Epitaxial graphene','cond-mat.mes-hall','2008-10-16','19','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.ssc.2007.04.023','NULL','v1','2007-04-03','NULL',' Li. Xuebin. ','704.0285','Wu','Epitaxial graphene','cond-mat.mes-hall','2008-10-16','19','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.ssc.2007.04.023','NULL','v1','2007-04-03','NULL',' Li. Tianbo. ','704.0285','Wu','Epitaxial graphene','cond-mat.mes-hall','2008-10-16','19','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.ssc.2007.04.023','NULL','v1','2007-04-03','NULL',' Sprinkle. Michael. ','704.0285','Wu','Epitaxial graphene','cond-mat.mes-hall','2008-10-16','19','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.ssc.2007.04.023','NULL','v1','2007-04-03','NULL',' Hass. Joanna. ','704.0285','Wu','Epitaxial graphene','cond-mat.mes-hall','2008-10-16','19','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.ssc.2007.04.023','NULL','v1','2007-04-03','NULL',' Sadowski. Marcin L. ','704.0285','Wu','Epitaxial graphene','cond-mat.mes-hall','2008-10-16','19','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.ssc.2007.04.023','NULL','v1','2007-04-03','NULL',' Potemski. Marek. ','704.0285','Wu','Epitaxial graphene','cond-mat.mes-hall','2008-10-16','19','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.ssc.2007.04.023','NULL','v1','2007-04-03','NULL',' Martinez. Gerard. ','704.0285','Wu','Epitaxial graphene','cond-mat.mes-hall','2008-10-16','19','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2757406','NULL','v1','2007-04-02','NULL','Parkinson. Pablo M. Saz. Milagro Collaboration','704.0287','Parkinson','Search for Very High Energy Emission from Gamma-Ray Bursts using Milagro','astro-ph','2009-11-13','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.76.014619','NULL','v1','2007-04-02','NULL','Chaudhuri. G. ','704.0288','Chaudhuri','Specific heat and bimodality in canonical and grand canonical versions
  of the thermodynamic model','nucl-th','2008-11-26','19','5','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.76.014619','NULL','v1','2007-04-02','NULL',' Gupta. S. Das. ','704.0288','Chaudhuri','Specific heat and bimodality in canonical and grand canonical versions
  of the thermodynamic model','nucl-th','2008-11-26','19','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.76.014619','NULL','v2','2007-07-05','NULL','Chaudhuri. G. ','704.0288','Chaudhuri','Specific heat and bimodality in canonical and grand canonical versions
  of the thermodynamic model','nucl-th','2008-11-26','19','5','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.76.014619','NULL','v2','2007-07-05','NULL',' Gupta. S. Das. ','704.0288','Chaudhuri','Specific heat and bimodality in canonical and grand canonical versions
  of the thermodynamic model','nucl-th','2008-11-26','19','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.76.014619','NULL','v3','2007-08-26','NULL','Chaudhuri. G. ','704.0288','Chaudhuri','Specific heat and bimodality in canonical and grand canonical versions
  of the thermodynamic model','nucl-th','2008-11-26','19','5','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.76.014619','NULL','v3','2007-08-26','NULL',' Gupta. S. Das. ','704.0288','Chaudhuri','Specific heat and bimodality in canonical and grand canonical versions
  of the thermodynamic model','nucl-th','2008-11-26','19','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.030401','NULL','v1','2007-04-02','NULL','Schweikhard. V. ','704.0289','Schweikhard','Vortex proliferation in the Berezinskii-Kosterlitz-Thouless regime on a
  two-dimensional lattice of Bose-Einstein condensates','cond-mat.mes-hall','2009-11-13','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.030401','NULL','v1','2007-04-02','NULL',' Tung. S. ','704.0289','Schweikhard','Vortex proliferation in the Berezinskii-Kosterlitz-Thouless regime on a
  two-dimensional lattice of Bose-Einstein condensates','cond-mat.mes-hall','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.030401','NULL','v1','2007-04-02','NULL',' Cornell. E. A. ','704.0289','Schweikhard','Vortex proliferation in the Berezinskii-Kosterlitz-Thouless regime on a
  two-dimensional lattice of Bose-Einstein condensates','cond-mat.mes-hall','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.030401','NULL','v2','2007-04-10','NULL','Schweikhard. V. ','704.0289','Schweikhard','Vortex proliferation in the Berezinskii-Kosterlitz-Thouless regime on a
  two-dimensional lattice of Bose-Einstein condensates','cond-mat.mes-hall','2009-11-13','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.030401','NULL','v2','2007-04-10','NULL',' Tung. S. ','704.0289','Schweikhard','Vortex proliferation in the Berezinskii-Kosterlitz-Thouless regime on a
  two-dimensional lattice of Bose-Einstein condensates','cond-mat.mes-hall','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.030401','NULL','v2','2007-04-10','NULL',' Cornell. E. A. ','704.0289','Schweikhard','Vortex proliferation in the Berezinskii-Kosterlitz-Thouless regime on a
  two-dimensional lattice of Bose-Einstein condensates','cond-mat.mes-hall','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.030401','NULL','v3','2007-05-17','NULL','Schweikhard. V. ','704.0289','Schweikhard','Vortex proliferation in the Berezinskii-Kosterlitz-Thouless regime on a
  two-dimensional lattice of Bose-Einstein condensates','cond-mat.mes-hall','2009-11-13','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.030401','NULL','v3','2007-05-17','NULL',' Tung. S. ','704.0289','Schweikhard','Vortex proliferation in the Berezinskii-Kosterlitz-Thouless regime on a
  two-dimensional lattice of Bose-Einstein condensates','cond-mat.mes-hall','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.030401','NULL','v3','2007-05-17','NULL',' Cornell. E. A. ','704.0289','Schweikhard','Vortex proliferation in the Berezinskii-Kosterlitz-Thouless regime on a
  two-dimensional lattice of Bose-Einstein condensates','cond-mat.mes-hall','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/517879','NULL','v1','2007-04-02','NULL','Hurley. Jarrod R. ','704.029','Hurley','The core binary fractions of star clusters from realistic simulations','astro-ph','2009-06-23','34','12','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/517879','NULL','v1','2007-04-02','NULL',' Aarseth. Sverre J. ','704.029','Hurley','The core binary fractions of star clusters from realistic simulations','astro-ph','2009-06-23','34','12','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/517879','NULL','v1','2007-04-02','NULL',' Shara. Michael M. ','704.029','Hurley','The core binary fractions of star clusters from realistic simulations','astro-ph','2009-06-23','34','12','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.77.063618','NULL','v1','2007-04-03','NULL','Jeppesen. M. ','704.0291','Jeppesen','Approaching the Heisenberg limit in an atom laser','physics.atom-ph','2009-11-13','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.77.063618','NULL','v1','2007-04-03','NULL',' Dugué. J. ','704.0291','Jeppesen','Approaching the Heisenberg limit in an atom laser','physics.atom-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.77.063618','NULL','v1','2007-04-03','NULL',' Dennis. G. R. ','704.0291','Jeppesen','Approaching the Heisenberg limit in an atom laser','physics.atom-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.77.063618','NULL','v1','2007-04-03','NULL',' Johnsson. M. T. ','704.0291','Jeppesen','Approaching the Heisenberg limit in an atom laser','physics.atom-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.77.063618','NULL','v1','2007-04-03','NULL',' Figl. C. ','704.0291','Jeppesen','Approaching the Heisenberg limit in an atom laser','physics.atom-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.77.063618','NULL','v1','2007-04-03','NULL',' Robins. N. P. ','704.0291','Jeppesen','Approaching the Heisenberg limit in an atom laser','physics.atom-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.77.063618','NULL','v1','2007-04-03','NULL',' Close. J. D. ','704.0291','Jeppesen','Approaching the Heisenberg limit in an atom laser','physics.atom-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.77.063618','NULL','v2','2007-10-02','NULL','Jeppesen. M. ','704.0291','Jeppesen','Approaching the Heisenberg limit in an atom laser','physics.atom-ph','2009-11-13','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.77.063618','NULL','v2','2007-10-02','NULL',' Dugué. J. ','704.0291','Jeppesen','Approaching the Heisenberg limit in an atom laser','physics.atom-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.77.063618','NULL','v2','2007-10-02','NULL',' Dennis. G. R. ','704.0291','Jeppesen','Approaching the Heisenberg limit in an atom laser','physics.atom-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.77.063618','NULL','v2','2007-10-02','NULL',' Johnsson. M. T. ','704.0291','Jeppesen','Approaching the Heisenberg limit in an atom laser','physics.atom-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.77.063618','NULL','v2','2007-10-02','NULL',' Figl. C. ','704.0291','Jeppesen','Approaching the Heisenberg limit in an atom laser','physics.atom-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.77.063618','NULL','v2','2007-10-02','NULL',' Robins. N. P. ','704.0291','Jeppesen','Approaching the Heisenberg limit in an atom laser','physics.atom-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.77.063618','NULL','v2','2007-10-02','NULL',' Close. J. D. ','704.0291','Jeppesen','Approaching the Heisenberg limit in an atom laser','physics.atom-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/05/086','NULL','v1','2007-04-03','NULL','Salam. Gavin P. ','704.0292','Soyez','A practical Seedless Infrared-Safe Cone jet algorithm','hep-ph','2009-11-13','42','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/05/086','NULL','v1','2007-04-03','NULL',' Soyez. Gregory. ','704.0292','Soyez','A practical Seedless Infrared-Safe Cone jet algorithm','hep-ph','2009-11-13','42','11','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/05/086','NULL','v2','2007-04-04','NULL','Salam. Gavin P. ','704.0292','Soyez','A practical Seedless Infrared-Safe Cone jet algorithm','hep-ph','2009-11-13','42','11','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/05/086','NULL','v2','2007-04-04','NULL',' Soyez. Gregory. ','704.0292','Soyez','A practical Seedless Infrared-Safe Cone jet algorithm','hep-ph','2009-11-13','42','11','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.113001','NULL','v1','2007-04-03','NULL','Dubynskiy. S. ','704.0293','Voloshin','Isospin breaking in the yield of heavy meson pairs in e+e- annihilation
  near threshold','hep-ph','2008-11-26','16','2','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.113001','NULL','v1','2007-04-03','NULL',' Yaouanc. A. Le. ','704.0293','Voloshin','Isospin breaking in the yield of heavy meson pairs in e+e- annihilation
  near threshold','hep-ph','2008-11-26','16','2','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.113001','NULL','v1','2007-04-03','NULL',' Oliver. L. ','704.0293','Voloshin','Isospin breaking in the yield of heavy meson pairs in e+e- annihilation
  near threshold','hep-ph','2008-11-26','16','2','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.113001','NULL','v1','2007-04-03','NULL',' Raynal. J. -C. ','704.0293','Voloshin','Isospin breaking in the yield of heavy meson pairs in e+e- annihilation
  near threshold','hep-ph','2008-11-26','16','2','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.113001','NULL','v1','2007-04-03','NULL',' Voloshin. M. B. ','704.0293','Voloshin','Isospin breaking in the yield of heavy meson pairs in e+e- annihilation
  near threshold','hep-ph','2008-11-26','16','2','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.104015','NULL','v1','2007-04-03','NULL','Bars. Itzhak. ','704.0296','Bars','Generalized Twistor Transform And Dualities, With A New Description of
  Particles With Spin, Beyond Free and Massless','hep-th','2008-11-26','33','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.104015','NULL','v1','2007-04-03','NULL',' Orcal. Bora. ','704.0296','Bars','Generalized Twistor Transform And Dualities, With A New Description of
  Particles With Spin, Beyond Free and Massless','hep-th','2008-11-26','33','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.104015','NULL','v2','2007-04-12','NULL','Bars. Itzhak. ','704.0296','Bars','Generalized Twistor Transform And Dualities, With A New Description of
  Particles With Spin, Beyond Free and Massless','hep-th','2008-11-26','33','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.104015','NULL','v2','2007-04-12','NULL',' Orcal. Bora. ','704.0296','Bars','Generalized Twistor Transform And Dualities, With A New Description of
  Particles With Spin, Beyond Free and Massless','hep-th','2008-11-26','33','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.12161.x','NULL','v1','2007-04-03','NULL','Yoon. Sung-Chul. ','704.0297','Yoon','Remnant evolution after a carbon-oxygen white dwarf merger','astro-ph','2019-08-19','15','15','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.12161.x','NULL','v1','2007-04-03','NULL',' Podsiadlowski. Philipp. ','704.0297','Yoon','Remnant evolution after a carbon-oxygen white dwarf merger','astro-ph','2019-08-19','15','15','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.12161.x','NULL','v1','2007-04-03','NULL',' Rosswog. Stephan. ','704.0297','Yoon','Remnant evolution after a carbon-oxygen white dwarf merger','astro-ph','2019-08-19','15','15','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.12161.x','NULL','v2','2007-04-04','NULL','Yoon. Sung-Chul. ','704.0297','Yoon','Remnant evolution after a carbon-oxygen white dwarf merger','astro-ph','2019-08-19','15','15','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.12161.x','NULL','v2','2007-04-04','NULL',' Podsiadlowski. Philipp. ','704.0297','Yoon','Remnant evolution after a carbon-oxygen white dwarf merger','astro-ph','2019-08-19','15','15','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.12161.x','NULL','v2','2007-04-04','NULL',' Rosswog. Stephan. ','704.0297','Yoon','Remnant evolution after a carbon-oxygen white dwarf merger','astro-ph','2019-08-19','15','15','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124022','NULL','v1','2007-04-03','NULL','Alexander. Stephon. ','704.0299','Yunes','Parametrized Post-Newtonian Expansion of Chern-Simons Gravity','hep-th','2008-11-26','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124022','NULL','v1','2007-04-03','NULL',' Yunes. Nicolas. ','704.0299','Yunes','Parametrized Post-Newtonian Expansion of Chern-Simons Gravity','hep-th','2008-11-26','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.186808','NULL','v1','2007-04-03','NULL','Purewal. Meninder. ','704.03','Kim','Scaling of Resistance and Electron Mean Free Path of Single-Walled
  Carbon Nanotubes','cond-mat.mes-hall','2009-11-13','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.186808','NULL','v1','2007-04-03','NULL',' Hong. Byung Hee. ','704.03','Kim','Scaling of Resistance and Electron Mean Free Path of Single-Walled
  Carbon Nanotubes','cond-mat.mes-hall','2009-11-13','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.186808','NULL','v1','2007-04-03','NULL',' Ravi. Anirudhh. ','704.03','Kim','Scaling of Resistance and Electron Mean Free Path of Single-Walled
  Carbon Nanotubes','cond-mat.mes-hall','2009-11-13','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.186808','NULL','v1','2007-04-03','NULL',' Chandra. Bhupesh. ','704.03','Kim','Scaling of Resistance and Electron Mean Free Path of Single-Walled
  Carbon Nanotubes','cond-mat.mes-hall','2009-11-13','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.186808','NULL','v1','2007-04-03','NULL',' Hone. James. ','704.03','Kim','Scaling of Resistance and Electron Mean Free Path of Single-Walled
  Carbon Nanotubes','cond-mat.mes-hall','2009-11-13','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.186808','NULL','v1','2007-04-03','NULL',' Kim. Philip. ','704.03','Kim','Scaling of Resistance and Electron Mean Free Path of Single-Walled
  Carbon Nanotubes','cond-mat.mes-hall','2009-11-13','4','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.186808','NULL','v2','2007-04-05','NULL','Purewal. Meninder. ','704.03','Kim','Scaling of Resistance and Electron Mean Free Path of Single-Walled
  Carbon Nanotubes','cond-mat.mes-hall','2009-11-13','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.186808','NULL','v2','2007-04-05','NULL',' Hong. Byung Hee. ','704.03','Kim','Scaling of Resistance and Electron Mean Free Path of Single-Walled
  Carbon Nanotubes','cond-mat.mes-hall','2009-11-13','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.186808','NULL','v2','2007-04-05','NULL',' Ravi. Anirudhh. ','704.03','Kim','Scaling of Resistance and Electron Mean Free Path of Single-Walled
  Carbon Nanotubes','cond-mat.mes-hall','2009-11-13','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.186808','NULL','v2','2007-04-05','NULL',' Chandra. Bhupesh. ','704.03','Kim','Scaling of Resistance and Electron Mean Free Path of Single-Walled
  Carbon Nanotubes','cond-mat.mes-hall','2009-11-13','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.186808','NULL','v2','2007-04-05','NULL',' Hone. James. ','704.03','Kim','Scaling of Resistance and Electron Mean Free Path of Single-Walled
  Carbon Nanotubes','cond-mat.mes-hall','2009-11-13','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.186808','NULL','v2','2007-04-05','NULL',' Kim. Philip. ','704.03','Kim','Scaling of Resistance and Electron Mean Free Path of Single-Walled
  Carbon Nanotubes','cond-mat.mes-hall','2009-11-13','4','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1145/1507244.1507252','NULL','v1','2007-04-03','NULL','Kawamura. Akitoshi. ','704.0301','Kawamura','Differential Recursion and Differentially Algebraic Functions','cs.CC','2009-04-19','14','3','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.astropartphys.2007.06.005','NULL','v1','2007-04-03','NULL','BenZvi. S. Y. ','704.0303','Westerhoff','Measurement of the Aerosol Phase Function at the Pierre Auger
  Observatory','astro-ph','2008-11-26','19','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.astropartphys.2007.06.005','NULL','v1','2007-04-03','NULL',' Connolly. B. M. ','704.0303','Westerhoff','Measurement of the Aerosol Phase Function at the Pierre Auger
  Observatory','astro-ph','2008-11-26','19','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.astropartphys.2007.06.005','NULL','v1','2007-04-03','NULL',' Matthews. J. A. J. ','704.0303','Westerhoff','Measurement of the Aerosol Phase Function at the Pierre Auger
  Observatory','astro-ph','2008-11-26','19','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.astropartphys.2007.06.005','NULL','v1','2007-04-03','NULL',' Prouza. M. ','704.0303','Westerhoff','Measurement of the Aerosol Phase Function at the Pierre Auger
  Observatory','astro-ph','2008-11-26','19','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.astropartphys.2007.06.005','NULL','v1','2007-04-03','NULL',' Visbal. E. F. ','704.0303','Westerhoff','Measurement of the Aerosol Phase Function at the Pierre Auger
  Observatory','astro-ph','2008-11-26','19','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.astropartphys.2007.06.005','NULL','v1','2007-04-03','NULL',' Westerhoff. S. ','704.0303','Westerhoff','Measurement of the Aerosol Phase Function at the Pierre Auger
  Observatory','astro-ph','2008-11-26','19','10','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.astropartphys.2007.06.005','NULL','v2','2007-07-02','NULL','BenZvi. S. Y. ','704.0303','Westerhoff','Measurement of the Aerosol Phase Function at the Pierre Auger
  Observatory','astro-ph','2008-11-26','19','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.astropartphys.2007.06.005','NULL','v2','2007-07-02','NULL',' Connolly. B. M. ','704.0303','Westerhoff','Measurement of the Aerosol Phase Function at the Pierre Auger
  Observatory','astro-ph','2008-11-26','19','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.astropartphys.2007.06.005','NULL','v2','2007-07-02','NULL',' Matthews. J. A. J. ','704.0303','Westerhoff','Measurement of the Aerosol Phase Function at the Pierre Auger
  Observatory','astro-ph','2008-11-26','19','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.astropartphys.2007.06.005','NULL','v2','2007-07-02','NULL',' Prouza. M. ','704.0303','Westerhoff','Measurement of the Aerosol Phase Function at the Pierre Auger
  Observatory','astro-ph','2008-11-26','19','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.astropartphys.2007.06.005','NULL','v2','2007-07-02','NULL',' Visbal. E. F. ','704.0303','Westerhoff','Measurement of the Aerosol Phase Function at the Pierre Auger
  Observatory','astro-ph','2008-11-26','19','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.astropartphys.2007.06.005','NULL','v2','2007-07-02','NULL',' Westerhoff. S. ','704.0303','Westerhoff','Measurement of the Aerosol Phase Function at the Pierre Auger
  Observatory','astro-ph','2008-11-26','19','10','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/978-3-642-18003-3_10','NULL','v1','2007-04-03','NULL','Gershenson. Carlos. ','704.0304','Gershenson','The World as Evolving Information','cs.IT','2013-04-05','16','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/978-3-642-18003-3_10','NULL','v2','2007-08-30','NULL','Gershenson. Carlos. ','704.0304','Gershenson','The World as Evolving Information','cs.IT','2013-04-05','16','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/978-3-642-18003-3_10','NULL','v3','2010-10-13','NULL','Gershenson. Carlos. ','704.0304','Gershenson','The World as Evolving Information','cs.IT','2013-04-05','16','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.198103','NULL','v1','2007-04-03','NULL','Guo. Yongxing. ','704.0305','Guo','Polymerization Force Driven Buckling of Microtubule Bundles Determines
  the Wavelength of Patterns Formed in Tubulin Solutions','physics.bio-ph','2007-06-13','4','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.198103','NULL','v1','2007-04-03','NULL',' Liu. Yifeng. ','704.0305','Guo','Polymerization Force Driven Buckling of Microtubule Bundles Determines
  the Wavelength of Patterns Formed in Tubulin Solutions','physics.bio-ph','2007-06-13','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.198103','NULL','v1','2007-04-03','NULL',' Tang. Jay X. ','704.0305','Guo','Polymerization Force Driven Buckling of Microtubule Bundles Determines
  the Wavelength of Patterns Formed in Tubulin Solutions','physics.bio-ph','2007-06-13','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.198103','NULL','v1','2007-04-03','NULL',' Valles. James M. Jr','704.0305','Guo','Polymerization Force Driven Buckling of Microtubule Bundles Determines
  the Wavelength of Patterns Formed in Tubulin Solutions','physics.bio-ph','2007-06-13','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v1','2007-04-03','NULL','Mei. D. -M. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v1','2007-04-03','NULL',' Elliott. S. R. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v1','2007-04-03','NULL',' Hime. A. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v1','2007-04-03','NULL',' Gehman. V. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v1','2007-04-03','NULL',' Kazkaz. K. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v2','2007-04-03','NULL','Mei. D. -M. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v2','2007-04-03','NULL',' Elliott. S. R. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v2','2007-04-03','NULL',' Hime. A. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v2','2007-04-03','NULL',' Gehman. V. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v2','2007-04-03','NULL',' Kazkaz. K. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v3','2007-08-06','NULL','Mei. D. -M. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v3','2007-08-06','NULL',' Elliott. S. R. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v3','2007-08-06','NULL',' Hime. A. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v3','2007-08-06','NULL',' Gehman. V. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v3','2007-08-06','NULL',' Kazkaz. K. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v4','2008-01-26','NULL','Mei. D. -M. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v4','2008-01-26','NULL',' Elliott. S. R. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v4','2008-01-26','NULL',' Hime. A. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v4','2008-01-26','NULL',' Gehman. V. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.054614','NULL','v4','2008-01-26','NULL',' Kazkaz. K. ','704.0306','Mei','Neutron Inelastic Scattering Processes as Background for Double-Beta
  Decay Experiments','nucl-ex','2009-09-29','16','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518408','NULL','v1','2007-04-03','NULL','Jensen. Eric L. N. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. Dhital. Saurav. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. Stassun. Keivan G. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. Patience. Jenny. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. Herbst. William. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. Walter. Frederick M. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. Simon. Michal. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. Basri. Gibor. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. ;. . 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley','704.0307','Jensen','Periodic accretion from a circumbinary disk in the young binary UZ Tau E','astro-ph','2009-06-23','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1086/518408','NULL','v2','2007-05-03','NULL','Jensen. Eric L. N. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. Dhital. Saurav. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. Stassun. Keivan G. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. Patience. Jenny. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. Herbst. William. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. Walter. Frederick M. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. Simon. Michal. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. Basri. Gibor. 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley. ;. . 1 - Swarthmore College; 2 - Vanderbilt; 3 - Caltech; 4n  - Wesleyan University; 5 - SUNY Stony Brook; 6 - UC Berkeley','704.0307','Jensen','Periodic accretion from a circumbinary disk in the young binary UZ Tau E','astro-ph','2009-06-23','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physa.2007.02.039','NULL','v1','2007-04-03','NULL','Deng. Ke. ','704.0308','Deng','Effect of node deleting on network structure','physics.soc-ph','2007-05-23','12','9','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physa.2007.02.039','NULL','v1','2007-04-03','NULL',' Zhao. Heping. ','704.0308','Deng','Effect of node deleting on network structure','physics.soc-ph','2007-05-23','12','9','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physa.2007.02.039','NULL','v1','2007-04-03','NULL',' Li. Dejun. ','704.0308','Deng','Effect of node deleting on network structure','physics.soc-ph','2007-05-23','12','9','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077265','NULL','v1','2007-04-03','NULL','Liu. Xiang. Urumqin  Observatory. NAOC. Cui. Lang. Urumqin  Observatory. NAOC. Luo. Wen-Feng. Urumqin  Observatory. NAOC. Shi. Wei-Zhao. Urumqin  Observatory. NAOC. Song. Hua-Gang. Urumqin  Observatory. NAOC','704.031','Liu','VLBI observations of nineteen GHz-Peaked-Spectrum radio sources at 1.6
  GHz','astro-ph','2007-07-10','11','12','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/0957-4484/18/46/465506','NULL','v1','2007-04-03','NULL','Kirtley. John R. ','704.0311','Kirtley','Moment switching in nanotube magnetic force probes','cond-mat.mes-hall','2009-11-13','10','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/0957-4484/18/46/465506','NULL','v1','2007-04-03','NULL',' Deng. Zhifeng. ','704.0311','Kirtley','Moment switching in nanotube magnetic force probes','cond-mat.mes-hall','2009-11-13','10','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/0957-4484/18/46/465506','NULL','v1','2007-04-03','NULL',' Luan. Lan. ','704.0311','Kirtley','Moment switching in nanotube magnetic force probes','cond-mat.mes-hall','2009-11-13','10','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/0957-4484/18/46/465506','NULL','v1','2007-04-03','NULL',' Yenilmez. Erhan. ','704.0311','Kirtley','Moment switching in nanotube magnetic force probes','cond-mat.mes-hall','2009-11-13','10','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/0957-4484/18/46/465506','NULL','v1','2007-04-03','NULL',' Dai. Hongjie. ','704.0311','Kirtley','Moment switching in nanotube magnetic force probes','cond-mat.mes-hall','2009-11-13','10','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/0957-4484/18/46/465506','NULL','v1','2007-04-03','NULL',' Moler. Kathryn A. ','704.0311','Kirtley','Moment switching in nanotube magnetic force probes','cond-mat.mes-hall','2009-11-13','10','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.12139.x','NULL','v1','2007-04-03','NULL','Francis. Matthew J. ','704.0312','Lewis','Power Spectra to 1% Accuracy between Dynamical Dark Energy Cosmologies','astro-ph','2009-06-23','9','14','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.12139.x','NULL','v1','2007-04-03','NULL',' Lewis. Geraint F. ','704.0312','Lewis','Power Spectra to 1% Accuracy between Dynamical Dark Energy Cosmologies','astro-ph','2009-06-23','9','14','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.12139.x','NULL','v1','2007-04-03','NULL',' Linder. Eric V. ','704.0312','Lewis','Power Spectra to 1% Accuracy between Dynamical Dark Energy Cosmologies','astro-ph','2009-06-23','9','14','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1143/JPSJ.76.053705','NULL','v1','2007-04-03','NULL','Hayashi. Yuta. ','704.0313','Hayashi','Possibility of Gapless Spin Liquid State by One-dimensionalization','cond-mat.str-el','2007-06-13','4','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1143/JPSJ.76.053705','NULL','v1','2007-04-03','NULL',' Ogata. Masao. ','704.0313','Hayashi','Possibility of Gapless Spin Liquid State by One-dimensionalization','cond-mat.str-el','2007-06-13','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.027502','NULL','v1','2007-04-03','NULL','Baukh. Viktor. ','704.0314','Zhuk','Extra dimensions and Lorentz invariance violation','hep-ph','2008-11-26','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.027502','NULL','v1','2007-04-03','NULL',' Zhuk. Alexander. ','704.0314','Zhuk','Extra dimensions and Lorentz invariance violation','hep-ph','2008-11-26','5','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.027502','NULL','v1','2007-04-03','NULL',' Kahniashvili. Tina. ','704.0314','Zhuk','Extra dimensions and Lorentz invariance violation','hep-ph','2008-11-26','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.027502','NULL','v2','2007-04-06','NULL','Baukh. Viktor. ','704.0314','Zhuk','Extra dimensions and Lorentz invariance violation','hep-ph','2008-11-26','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.027502','NULL','v2','2007-04-06','NULL',' Zhuk. Alexander. ','704.0314','Zhuk','Extra dimensions and Lorentz invariance violation','hep-ph','2008-11-26','5','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.027502','NULL','v2','2007-04-06','NULL',' Kahniashvili. Tina. ','704.0314','Zhuk','Extra dimensions and Lorentz invariance violation','hep-ph','2008-11-26','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.027502','NULL','v3','2007-06-02','NULL','Baukh. Viktor. ','704.0314','Zhuk','Extra dimensions and Lorentz invariance violation','hep-ph','2008-11-26','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.027502','NULL','v3','2007-06-02','NULL',' Zhuk. Alexander. ','704.0314','Zhuk','Extra dimensions and Lorentz invariance violation','hep-ph','2008-11-26','5','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.027502','NULL','v3','2007-06-02','NULL',' Kahniashvili. Tina. ','704.0314','Zhuk','Extra dimensions and Lorentz invariance violation','hep-ph','2008-11-26','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.027502','NULL','v4','2007-11-13','NULL','Baukh. Viktor. ','704.0314','Zhuk','Extra dimensions and Lorentz invariance violation','hep-ph','2008-11-26','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.027502','NULL','v4','2007-11-13','NULL',' Zhuk. Alexander. ','704.0314','Zhuk','Extra dimensions and Lorentz invariance violation','hep-ph','2008-11-26','5','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.027502','NULL','v4','2007-11-13','NULL',' Kahniashvili. Tina. ','704.0314','Zhuk','Extra dimensions and Lorentz invariance violation','hep-ph','2008-11-26','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.11770.x','NULL','v1','2007-04-03','NULL','Graham. Alister W. ','704.0316','Graham','The Millennium Galaxy Catalogue: The local supermassive black hole mass
  function in early- and late-type galaxies','astro-ph','2012-04-26','10','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.11770.x','NULL','v1','2007-04-03','NULL',' Driver. Simon P. ','704.0316','Graham','The Millennium Galaxy Catalogue: The local supermassive black hole mass
  function in early- and late-type galaxies','astro-ph','2012-04-26','10','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.11770.x','NULL','v1','2007-04-03','NULL',' Allen. Paul D. ','704.0316','Graham','The Millennium Galaxy Catalogue: The local supermassive black hole mass
  function in early- and late-type galaxies','astro-ph','2012-04-26','10','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.11770.x','NULL','v1','2007-04-03','NULL',' Liske. Jochen. ','704.0316','Graham','The Millennium Galaxy Catalogue: The local supermassive black hole mass
  function in early- and late-type galaxies','astro-ph','2012-04-26','10','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.045201','NULL','v1','2007-04-03','NULL','Biswas. Subhrajyoti. ','704.0318','Biswas','Effects of Dirac sea on pion propagation in asymmetric nuclear matter','nucl-th','2008-11-26','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.045201','NULL','v1','2007-04-03','NULL',' Dutt-Mazumder. Abhee K. ','704.0318','Biswas','Effects of Dirac sea on pion propagation in asymmetric nuclear matter','nucl-th','2008-11-26','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.045201','NULL','v2','2007-04-12','NULL','Biswas. Subhrajyoti. ','704.0318','Biswas','Effects of Dirac sea on pion propagation in asymmetric nuclear matter','nucl-th','2008-11-26','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.045201','NULL','v2','2007-04-12','NULL',' Dutt-Mazumder. Abhee K. ','704.0318','Biswas','Effects of Dirac sea on pion propagation in asymmetric nuclear matter','nucl-th','2008-11-26','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.045201','NULL','v3','2008-03-06','NULL','Biswas. Subhrajyoti. ','704.0318','Biswas','Effects of Dirac sea on pion propagation in asymmetric nuclear matter','nucl-th','2008-11-26','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.77.045201','NULL','v3','2008-03-06','NULL',' Dutt-Mazumder. Abhee K. ','704.0318','Biswas','Effects of Dirac sea on pion propagation in asymmetric nuclear matter','nucl-th','2008-11-26','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.125301','NULL','v1','2007-04-03','NULL','Ding. Guo-Hui. ','704.0319','Ding','Spin-orbit coupling effect on the persistent currents in mesoscopic ring
  with an Anderson impurity','cond-mat.mes-hall','2009-11-13','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.125301','NULL','v1','2007-04-03','NULL',' Dong. Bing. ','704.0319','Ding','Spin-orbit coupling effect on the persistent currents in mesoscopic ring
  with an Anderson impurity','cond-mat.mes-hall','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1674-1056/18/2/021','NULL','v1','2007-04-03','NULL','Liu. Quan-Xing. ','704.0322','Quanxing','Emergence of spatiotemporal chaos driven by far-field breakup of spiral
  waves in the plankton ecological systems','nlin.PS','2009-05-29','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1674-1056/18/2/021','NULL','v1','2007-04-03','NULL',' Sun. Gui-Quan. ','704.0322','Quanxing','Emergence of spatiotemporal chaos driven by far-field breakup of spiral
  waves in the plankton ecological systems','nlin.PS','2009-05-29','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1674-1056/18/2/021','NULL','v1','2007-04-03','NULL',' Li. Bai-Lian. ','704.0322','Quanxing','Emergence of spatiotemporal chaos driven by far-field breakup of spiral
  waves in the plankton ecological systems','nlin.PS','2009-05-29','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1674-1056/18/2/021','NULL','v1','2007-04-03','NULL',' Jin. Zhen. ','704.0322','Quanxing','Emergence of spatiotemporal chaos driven by far-field breakup of spiral
  waves in the plankton ecological systems','nlin.PS','2009-05-29','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1674-1056/18/2/021','NULL','v2','2007-08-22','NULL','Liu. Quan-Xing. ','704.0322','Quanxing','Emergence of spatiotemporal chaos driven by far-field breakup of spiral
  waves in the plankton ecological systems','nlin.PS','2009-05-29','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1674-1056/18/2/021','NULL','v2','2007-08-22','NULL',' Sun. Gui-Quan. ','704.0322','Quanxing','Emergence of spatiotemporal chaos driven by far-field breakup of spiral
  waves in the plankton ecological systems','nlin.PS','2009-05-29','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1674-1056/18/2/021','NULL','v2','2007-08-22','NULL',' Li. Bai-Lian. ','704.0322','Quanxing','Emergence of spatiotemporal chaos driven by far-field breakup of spiral
  waves in the plankton ecological systems','nlin.PS','2009-05-29','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1674-1056/18/2/021','NULL','v2','2007-08-22','NULL',' Jin. Zhen. ','704.0322','Quanxing','Emergence of spatiotemporal chaos driven by far-field breakup of spiral
  waves in the plankton ecological systems','nlin.PS','2009-05-29','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1674-1056/18/2/021','NULL','v3','2007-12-05','NULL','Liu. Quan-Xing. ','704.0322','Quanxing','Emergence of spatiotemporal chaos driven by far-field breakup of spiral
  waves in the plankton ecological systems','nlin.PS','2009-05-29','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1674-1056/18/2/021','NULL','v3','2007-12-05','NULL',' Sun. Gui-Quan. ','704.0322','Quanxing','Emergence of spatiotemporal chaos driven by far-field breakup of spiral
  waves in the plankton ecological systems','nlin.PS','2009-05-29','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1674-1056/18/2/021','NULL','v3','2007-12-05','NULL',' Li. Bai-Lian. ','704.0322','Quanxing','Emergence of spatiotemporal chaos driven by far-field breakup of spiral
  waves in the plankton ecological systems','nlin.PS','2009-05-29','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1674-1056/18/2/021','NULL','v3','2007-12-05','NULL',' Jin. Zhen. ','704.0322','Quanxing','Emergence of spatiotemporal chaos driven by far-field breakup of spiral
  waves in the plankton ecological systems','nlin.PS','2009-05-29','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1751-8113/41/15/155303','NULL','v1','2007-04-03','NULL','Dang. Gui-Fang. ','704.0323','Fan','General sequential quantum cloning','quant-ph','2012-05-23','4','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1751-8113/41/15/155303','NULL','v1','2007-04-03','NULL',' Fan. Heng. ','704.0323','Fan','General sequential quantum cloning','quant-ph','2012-05-23','4','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1751-8113/41/15/155303','NULL','v2','2007-04-11','NULL','Dang. Gui-Fang. ','704.0323','Fan','General sequential quantum cloning','quant-ph','2012-05-23','4','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1751-8113/41/15/155303','NULL','v2','2007-04-11','NULL',' Fan. Heng. ','704.0323','Fan','General sequential quantum cloning','quant-ph','2012-05-23','4','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1742-5468/2008/09/L09003','NULL','v1','2007-04-03','NULL','Grenard. Vincent. Phys-ENS. Garnier. Nicolas. Phys-ENS. Naert. Antoine. Phys-ENS','704.0325','Naert','Fluctuation-dissipation relation on a Melde string in a turbulent flow,
  considerations on a "dynamical temperature"','cond-mat.stat-mech','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1742-5468/2008/09/L09003','NULL','v2','2008-06-19','NULL','Grenard. Vincent. Phys-ENS. Garnier. Nicolas. Phys-ENS. Naert. Antoine. Phys-ENS','704.0325','Naert','Fluctuation-dissipation relation on a Melde string in a turbulent flow,
  considerations on a "dynamical temperature"','cond-mat.stat-mech','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1742-5468/2008/09/L09003','NULL','v3','2008-08-01','NULL','Grenard. Vincent. Phys-ENS. Garnier. Nicolas. Phys-ENS. Naert. Antoine. Phys-ENS','704.0325','Naert','Fluctuation-dissipation relation on a Melde string in a turbulent flow,
  considerations on a "dynamical temperature"','cond-mat.stat-mech','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physa.2007.06.047','NULL','v1','2007-04-03','NULL','Mathai. A. M. ','704.0326','Haubold','On generalized entropy measures and pathways','math.ST','2009-11-13','12','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physa.2007.06.047','NULL','v1','2007-04-03','NULL',' Haubold. H. J. ','704.0326','Haubold','On generalized entropy measures and pathways','math.ST','2009-11-13','12','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physa.2007.06.047','NULL','v2','2007-08-07','NULL','Mathai. A. M. ','704.0326','Haubold','On generalized entropy measures and pathways','math.ST','2009-11-13','12','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physa.2007.06.047','NULL','v2','2007-08-07','NULL',' Haubold. H. J. ','704.0326','Haubold','On generalized entropy measures and pathways','math.ST','2009-11-13','12','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.165128','NULL','v1','2007-04-03','NULL','Maiti. Kalobaran. ','704.0327','Maiti','Evolution of a band insulating phase from a correlated metallic phase','cond-mat.str-el','2009-11-13','0','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.165128','NULL','v1','2007-04-03','NULL',' Singh. Ravi Shankar. ','704.0327','Maiti','Evolution of a band insulating phase from a correlated metallic phase','cond-mat.str-el','2009-11-13','0','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevB.76.165128','NULL','v1','2007-04-03','NULL',' Medicherla. V. R. R. ','704.0327','Maiti','Evolution of a band insulating phase from a correlated metallic phase','cond-mat.str-el','2009-11-13','0','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.075011','NULL','v1','2007-04-03','NULL','Ham. S. W. ','704.0328','Ham','Electroweak phase transitions in the MSSM with an extra $U(1)$','hep-ph','2008-11-26','17','3','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.075011','NULL','v1','2007-04-03','NULL',' Yoo. E. J. ','704.0328','Ham','Electroweak phase transitions in the MSSM with an extra $U(1)$','hep-ph','2008-11-26','17','3','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.075011','NULL','v1','2007-04-03','NULL',' OH. S. K. ','704.0328','Ham','Electroweak phase transitions in the MSSM with an extra $U(1)$','hep-ph','2008-11-26','17','3','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1143/PTPS.168.265','NULL','v1','2007-04-03','NULL','Splittorff. K. ','704.033','Verbaarschot','Random Matrix Theory at Nonzero $mu$ and $T$','hep-ph','2008-11-26','10','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1143/PTPS.168.265','NULL','v1','2007-04-03','NULL',' Verbaarschot. J. J. M. ','704.033','Verbaarschot','Random Matrix Theory at Nonzero $mu$ and $T$','hep-ph','2008-11-26','10','10','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physb.2007.10.107','NULL','v1','2007-04-03','NULL','Cappelluti. E. ','704.0333','Cappelluti','Optical properties of the Holstein-t-J model from dynamical mean-field
  theory','cond-mat.str-el','2009-11-13','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physb.2007.10.107','NULL','v1','2007-04-03','NULL',' Ciuchi. S. ','704.0333','Cappelluti','Optical properties of the Holstein-t-J model from dynamical mean-field
  theory','cond-mat.str-el','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physb.2007.10.107','NULL','v1','2007-04-03','NULL',' Fratini. S. ','704.0333','Cappelluti','Optical properties of the Holstein-t-J model from dynamical mean-field
  theory','cond-mat.str-el','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1021/jp0718909','NULL','v1','2007-04-03','NULL','Padmanabhan. J. ','704.0334','Chattaraj','A Multiphilic Descriptor for Chemical Reactivity and Selectivity','physics.chem-ph','2016-09-28','38','8','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1021/jp0718909','NULL','v1','2007-04-03','NULL',' Parthasarathi. R. ','704.0334','Chattaraj','A Multiphilic Descriptor for Chemical Reactivity and Selectivity','physics.chem-ph','2016-09-28','38','8','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1021/jp0718909','NULL','v1','2007-04-03','NULL',' Elango. M. ','704.0334','Chattaraj','A Multiphilic Descriptor for Chemical Reactivity and Selectivity','physics.chem-ph','2016-09-28','38','8','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1021/jp0718909','NULL','v1','2007-04-03','NULL',' Subramanian. V. ','704.0334','Chattaraj','A Multiphilic Descriptor for Chemical Reactivity and Selectivity','physics.chem-ph','2016-09-28','38','8','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1021/jp0718909','NULL','v1','2007-04-03','NULL',' Krishnamoorthy. B. S. ','704.0334','Chattaraj','A Multiphilic Descriptor for Chemical Reactivity and Selectivity','physics.chem-ph','2016-09-28','38','8','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1021/jp0718909','NULL','v1','2007-04-03','NULL',' Gutierrez-Oliva. S. ','704.0334','Chattaraj','A Multiphilic Descriptor for Chemical Reactivity and Selectivity','physics.chem-ph','2016-09-28','38','8','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1021/jp0718909','NULL','v1','2007-04-03','NULL',' Toro-Labbe. A. ','704.0334','Chattaraj','A Multiphilic Descriptor for Chemical Reactivity and Selectivity','physics.chem-ph','2016-09-28','38','8','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1021/jp0718909','NULL','v1','2007-04-03','NULL',' Roy. D. R. ','704.0334','Chattaraj','A Multiphilic Descriptor for Chemical Reactivity and Selectivity','physics.chem-ph','2016-09-28','38','8','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1021/jp0718909','NULL','v1','2007-04-03','NULL',' Chattaraj. P. K. ','704.0334','Chattaraj','A Multiphilic Descriptor for Chemical Reactivity and Selectivity','physics.chem-ph','2016-09-28','38','8','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.145503','NULL','v1','2007-04-03','NULL','Karvonen. J. T. ','704.0336','Maasilta','Influence of Phonon dimensionality on Electron Energy Relaxation','cond-mat.mes-hall','2007-11-26','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.145503','NULL','v1','2007-04-03','NULL',' Maasilta. I. J. ','704.0336','Maasilta','Influence of Phonon dimensionality on Electron Energy Relaxation','cond-mat.mes-hall','2007-11-26','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.145503','NULL','v2','2007-08-20','NULL','Karvonen. J. T. ','704.0336','Maasilta','Influence of Phonon dimensionality on Electron Energy Relaxation','cond-mat.mes-hall','2007-11-26','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.145503','NULL','v2','2007-08-20','NULL',' Maasilta. I. J. ','704.0336','Maasilta','Influence of Phonon dimensionality on Electron Energy Relaxation','cond-mat.mes-hall','2007-11-26','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/s11249-004-8088-7','NULL','v1','2007-04-03','NULL','Bec. Sandrine. LTDS. Tonck. André. LTDS. Georges. Jean-Marie. LTDS. Roper. Glyn W. SHELL','704.0338','Bec','Synergistic Effects of MoDTC and ZDTP on Frictional Behaviour of
  Tribofilms at the Nanometer Scale','cond-mat.mtrl-sci','2007-05-23','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.198303','NULL','v1','2007-04-03','NULL','Baumgartl. Jörg. ','704.0343','Baumgartl','Experimental observation of structural crossover in binary mixtures of
  colloidal hard spheres','cond-mat.soft','2007-10-04','4','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.198303','NULL','v1','2007-04-03','NULL',' Dullens. Roel P. A. ','704.0343','Baumgartl','Experimental observation of structural crossover in binary mixtures of
  colloidal hard spheres','cond-mat.soft','2007-10-04','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.198303','NULL','v1','2007-04-03','NULL',' Dijkstra. Marjolein. ','704.0343','Baumgartl','Experimental observation of structural crossover in binary mixtures of
  colloidal hard spheres','cond-mat.soft','2007-10-04','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.198303','NULL','v1','2007-04-03','NULL',' Roth. Roland. ','704.0343','Baumgartl','Experimental observation of structural crossover in binary mixtures of
  colloidal hard spheres','cond-mat.soft','2007-10-04','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.198303','NULL','v1','2007-04-03','NULL',' Bechinger. Clemens. ','704.0343','Baumgartl','Experimental observation of structural crossover in binary mixtures of
  colloidal hard spheres','cond-mat.soft','2007-10-04','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.198303','NULL','v2','2007-10-04','NULL','Baumgartl. Jörg. ','704.0343','Baumgartl','Experimental observation of structural crossover in binary mixtures of
  colloidal hard spheres','cond-mat.soft','2007-10-04','4','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.198303','NULL','v2','2007-10-04','NULL',' Dullens. Roel P. A. ','704.0343','Baumgartl','Experimental observation of structural crossover in binary mixtures of
  colloidal hard spheres','cond-mat.soft','2007-10-04','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.198303','NULL','v2','2007-10-04','NULL',' Dijkstra. Marjolein. ','704.0343','Baumgartl','Experimental observation of structural crossover in binary mixtures of
  colloidal hard spheres','cond-mat.soft','2007-10-04','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.198303','NULL','v2','2007-10-04','NULL',' Roth. Roland. ','704.0343','Baumgartl','Experimental observation of structural crossover in binary mixtures of
  colloidal hard spheres','cond-mat.soft','2007-10-04','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.198303','NULL','v2','2007-10-04','NULL',' Bechinger. Clemens. ','704.0343','Baumgartl','Experimental observation of structural crossover in binary mixtures of
  colloidal hard spheres','cond-mat.soft','2007-10-04','4','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2757292','NULL','v1','2007-04-03','NULL','Maraschi. L. ','704.0344','Tavecchio','The Blazar Spectral Sequence and GLAST','astro-ph','2009-06-23','3','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2757292','NULL','v1','2007-04-03','NULL',' Ghisellini. G. ','704.0344','Tavecchio','The Blazar Spectral Sequence and GLAST','astro-ph','2009-06-23','3','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2757292','NULL','v1','2007-04-03','NULL',' Tavecchio. F. ','704.0344','Tavecchio','The Blazar Spectral Sequence and GLAST','astro-ph','2009-06-23','3','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1209/0295-5075/78/48001','NULL','v1','2007-04-03','NULL','Wang. Bing. ','704.0345','Wang','A High Robustness and Low Cost Model for Cascading Failures','physics.soc-ph','2016-09-08','5','5','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1209/0295-5075/78/48001','NULL','v1','2007-04-03','NULL',' Kim. Beom Jun. ','704.0345','Wang','A High Robustness and Low Cost Model for Cascading Failures','physics.soc-ph','2016-09-08','5','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1143/PTPS.169.174','NULL','v1','2007-04-03','NULL','Hamaguchi. Kenji. ','704.0346','Hamaguchi','Diffuse X-ray Emission from the Carina Nebula Observed with Suzaku','astro-ph','2009-11-13','4','2','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1143/PTPS.169.174','NULL','v1','2007-04-03','NULL',' team. the Suzaku Eta Carinae. ','704.0346','Hamaguchi','Diffuse X-ray Emission from the Carina Nebula Observed with Suzaku','astro-ph','2009-11-13','4','2','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1143/PTPS.169.174','NULL','v1','2007-04-03','NULL',' team. the Carinae D-1. ','704.0346','Hamaguchi','Diffuse X-ray Emission from the Carina Nebula Observed with Suzaku','astro-ph','2009-11-13','4','2','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.icarus.2007.03.033','NULL','v1','2007-04-03','NULL','Fornasier. S. ','704.035','Fornasier','Visible spectroscopic and photometric survey of Jupiter Trojans: final
  results on dynamical families','astro-ph','2009-11-13','52','14','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.icarus.2007.03.033','NULL','v1','2007-04-03','NULL',' Dotto. E. ','704.035','Fornasier','Visible spectroscopic and photometric survey of Jupiter Trojans: final
  results on dynamical families','astro-ph','2009-11-13','52','14','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.icarus.2007.03.033','NULL','v1','2007-04-03','NULL',' Hainaut. O. ','704.035','Fornasier','Visible spectroscopic and photometric survey of Jupiter Trojans: final
  results on dynamical families','astro-ph','2009-11-13','52','14','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.icarus.2007.03.033','NULL','v1','2007-04-03','NULL',' Marzari. F. ','704.035','Fornasier','Visible spectroscopic and photometric survey of Jupiter Trojans: final
  results on dynamical families','astro-ph','2009-11-13','52','14','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.icarus.2007.03.033','NULL','v1','2007-04-03','NULL',' Boehnhardt. H. ','704.035','Fornasier','Visible spectroscopic and photometric survey of Jupiter Trojans: final
  results on dynamical families','astro-ph','2009-11-13','52','14','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.icarus.2007.03.033','NULL','v1','2007-04-03','NULL',' De Luise. F. ','704.035','Fornasier','Visible spectroscopic and photometric survey of Jupiter Trojans: final
  results on dynamical families','astro-ph','2009-11-13','52','14','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.icarus.2007.03.033','NULL','v1','2007-04-03','NULL',' Barucci. M. A. ','704.035','Fornasier','Visible spectroscopic and photometric survey of Jupiter Trojans: final
  results on dynamical families','astro-ph','2009-11-13','52','14','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066364','NULL','v1','2007-04-03','NULL','Kunert-Bajraszewska. Magdalena. ','704.0351','Marecki','FIRST-based survey of Compact Steep Spectrum sources, V.
  Milliarcsecond-scale morphology of CSS objects','astro-ph','2009-11-13','14','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066364','NULL','v1','2007-04-03','NULL',' Marecki. Andrzej. ','704.0351','Marecki','FIRST-based survey of Compact Steep Spectrum sources, V.
  Milliarcsecond-scale morphology of CSS objects','astro-ph','2009-11-13','14','10','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066364','NULL','v2','2007-05-28','NULL','Kunert-Bajraszewska. Magdalena. ','704.0351','Marecki','FIRST-based survey of Compact Steep Spectrum sources, V.
  Milliarcsecond-scale morphology of CSS objects','astro-ph','2009-11-13','14','10','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066364','NULL','v2','2007-05-28','NULL',' Marecki. Andrzej. ','704.0351','Marecki','FIRST-based survey of Compact Steep Spectrum sources, V.
  Milliarcsecond-scale morphology of CSS objects','astro-ph','2009-11-13','14','10','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physleta.2007.06.035','NULL','v1','2007-04-03','NULL','Chigvinadze. J. G. ','704.0352','G','Investigation of relaxation phenomena in high-temperature
  superconductors HoBa2Cu3O7-d at the action of pulsed magnetic fields','cond-mat.soft','2009-11-13','6','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physleta.2007.06.035','NULL','v1','2007-04-03','NULL',' Acrivos. J. V. ','704.0352','G','Investigation of relaxation phenomena in high-temperature
  superconductors HoBa2Cu3O7-d at the action of pulsed magnetic fields','cond-mat.soft','2009-11-13','6','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physleta.2007.06.035','NULL','v1','2007-04-03','NULL',' Ashimov. S. M. ','704.0352','G','Investigation of relaxation phenomena in high-temperature
  superconductors HoBa2Cu3O7-d at the action of pulsed magnetic fields','cond-mat.soft','2009-11-13','6','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physleta.2007.06.035','NULL','v1','2007-04-03','NULL',' Iashvili. A. A. ','704.0352','G','Investigation of relaxation phenomena in high-temperature
  superconductors HoBa2Cu3O7-d at the action of pulsed magnetic fields','cond-mat.soft','2009-11-13','6','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physleta.2007.06.035','NULL','v1','2007-04-03','NULL',' Machaidze. T. V. ','704.0352','G','Investigation of relaxation phenomena in high-temperature
  superconductors HoBa2Cu3O7-d at the action of pulsed magnetic fields','cond-mat.soft','2009-11-13','6','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physleta.2007.06.035','NULL','v1','2007-04-03','NULL',' Wolf. Th. ','704.0352','G','Investigation of relaxation phenomena in high-temperature
  superconductors HoBa2Cu3O7-d at the action of pulsed magnetic fields','cond-mat.soft','2009-11-13','6','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.75.047303','NULL','v1','2007-04-03','NULL','Alberto. P. ','704.0353','Alberto','Spin and pseudospin symmetries and the equivalent spectra of
  relativistic spin-1/2 and spin-0 particles','nucl-th','2008-11-26','5','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.75.047303','NULL','v1','2007-04-03','NULL',' de Castro. A. S. ','704.0353','Alberto','Spin and pseudospin symmetries and the equivalent spectra of
  relativistic spin-1/2 and spin-0 particles','nucl-th','2008-11-26','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevC.75.047303','NULL','v1','2007-04-03','NULL',' Malheiro. M. ','704.0353','Alberto','Spin and pseudospin symmetries and the equivalent spectra of
  relativistic spin-1/2 and spin-0 particles','nucl-th','2008-11-26','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066876','NULL','v1','2007-04-03','NULL','Ducourant. C. ','704.0355','Ducourant','Trigonometric parallaxes of high velocity halo white dwarf candidates','astro-ph','2009-11-13','5','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066876','NULL','v1','2007-04-03','NULL',' Teixeira. R. ','704.0355','Ducourant','Trigonometric parallaxes of high velocity halo white dwarf candidates','astro-ph','2009-11-13','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066876','NULL','v1','2007-04-03','NULL',' Hambly. N. C. ','704.0355','Ducourant','Trigonometric parallaxes of high velocity halo white dwarf candidates','astro-ph','2009-11-13','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066876','NULL','v1','2007-04-03','NULL',' Oppenheimer. B. R. ','704.0355','Ducourant','Trigonometric parallaxes of high velocity halo white dwarf candidates','astro-ph','2009-11-13','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066876','NULL','v1','2007-04-03','NULL',' Hawkins. M. R. S. ','704.0355','Ducourant','Trigonometric parallaxes of high velocity halo white dwarf candidates','astro-ph','2009-11-13','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066876','NULL','v1','2007-04-03','NULL',' Rapaport. M. ','704.0355','Ducourant','Trigonometric parallaxes of high velocity halo white dwarf candidates','astro-ph','2009-11-13','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066876','NULL','v1','2007-04-03','NULL',' Modolo. J. ','704.0355','Ducourant','Trigonometric parallaxes of high velocity halo white dwarf candidates','astro-ph','2009-11-13','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20066876','NULL','v1','2007-04-03','NULL',' Lecampion. J. F. ','704.0355','Ducourant','Trigonometric parallaxes of high velocity halo white dwarf candidates','astro-ph','2009-11-13','5','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.cpc.2007.04.001','NULL','v1','2007-04-03','NULL','Cerdá-Durán. Pablo. ','704.0356','Cerda-Duran','AMR simulations of the low T/|W| bar-mode instability of neutron stars','astro-ph','2009-06-23','20','9','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.cpc.2007.04.001','NULL','v1','2007-04-03','NULL',' Quilis. Vicent. ','704.0356','Cerda-Duran','AMR simulations of the low T/|W| bar-mode instability of neutron stars','astro-ph','2009-06-23','20','9','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.cpc.2007.04.001','NULL','v1','2007-04-03','NULL',' Font. José A. ','704.0356','Cerda-Duran','AMR simulations of the low T/|W| bar-mode instability of neutron stars','astro-ph','2009-06-23','20','9','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevE.78.031919','NULL','v1','2007-04-03','NULL','Szollosi. Gergely J. ','704.0357','Sz"ollH\{o\}si','Evolutionary games on minimally structured populations','q-bio.PE','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevE.78.031919','NULL','v1','2007-04-03','NULL',' Derenyi. Imre. ','704.0357','Sz"ollH\{o\}si','Evolutionary games on minimally structured populations','q-bio.PE','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevE.78.031919','NULL','v2','2007-04-13','NULL','Szollosi. Gergely J. ','704.0357','Sz"ollH\{o\}si','Evolutionary games on minimally structured populations','q-bio.PE','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevE.78.031919','NULL','v2','2007-04-13','NULL',' Derenyi. Imre. ','704.0357','Sz"ollH\{o\}si','Evolutionary games on minimally structured populations','q-bio.PE','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevE.78.031919','NULL','v3','2008-10-15','NULL','Szollosi. Gergely J. ','704.0357','Sz"ollH\{o\}si','Evolutionary games on minimally structured populations','q-bio.PE','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevE.78.031919','NULL','v3','2008-10-15','NULL',' Derenyi. Imre. ','704.0357','Sz"ollH\{o\}si','Evolutionary games on minimally structured populations','q-bio.PE','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077246','NULL','v1','2007-04-03','NULL','Zaqarashvili. T. V. ','704.036','Zaqarashvili','Torsional oscillations of longitudinally inhomogeneous coronal loops','astro-ph','2019-08-19','6','3','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1051/0004-6361:20077246','NULL','v1','2007-04-03','NULL',' Murawski. K. ','704.036','Zaqarashvili','Torsional oscillations of longitudinally inhomogeneous coronal loops','astro-ph','2019-08-19','6','3','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1109/ISIT.2007.4557299','NULL','v1','2007-04-03','NULL','Chatzigeorgiou. Ioannis. ','704.0361','Chatzigeorgiou','Pseudo-random Puncturing: A Technique to Lower the Error Floor of Turbo
  Codes','cs.IT','2016-11-18','5','1','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1109/ISIT.2007.4557299','NULL','v1','2007-04-03','NULL',' Rodrigues. Miguel R. D. ','704.0361','Chatzigeorgiou','Pseudo-random Puncturing: A Technique to Lower the Error Floor of Turbo
  Codes','cs.IT','2016-11-18','5','1','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1109/ISIT.2007.4557299','NULL','v1','2007-04-03','NULL',' Wassell. Ian J. ','704.0361','Chatzigeorgiou','Pseudo-random Puncturing: A Technique to Lower the Error Floor of Turbo
  Codes','cs.IT','2016-11-18','5','1','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1109/ISIT.2007.4557299','NULL','v1','2007-04-03','NULL',' Carrasco. Rolando. ','704.0361','Chatzigeorgiou','Pseudo-random Puncturing: A Technique to Lower the Error Floor of Turbo
  Codes','cs.IT','2016-11-18','5','1','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.064033','NULL','v1','2007-04-03','NULL','Diaz. Pablo. ','704.0366','Segui','Generalized Nariai Solutions for Yang-type Monopoles','gr-qc','2008-11-26','15','3','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.064033','NULL','v1','2007-04-03','NULL',' Segui. Antonio. ','704.0366','Segui','Generalized Nariai Solutions for Yang-type Monopoles','gr-qc','2008-11-26','15','3','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.064033','NULL','v2','2007-06-01','NULL','Diaz. Pablo. ','704.0366','Segui','Generalized Nariai Solutions for Yang-type Monopoles','gr-qc','2008-11-26','15','3','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.76.064033','NULL','v2','2007-06-01','NULL',' Segui. Antonio. ','704.0366','Segui','Generalized Nariai Solutions for Yang-type Monopoles','gr-qc','2008-11-26','15','3','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00121-8','NULL','v1','2007-04-03','NULL','Pashkin. A. ','704.0368','Pashkin','Metal-insulator transition in the low-dimensional organic conductor
  (TMTSF)2FSO3 probed by infrared microspectroscopy','cond-mat.str-el','2007-06-13','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00121-8','NULL','v1','2007-04-03','NULL',' Thirunavukkuarasu. K. ','704.0368','Pashkin','Metal-insulator transition in the low-dimensional organic conductor
  (TMTSF)2FSO3 probed by infrared microspectroscopy','cond-mat.str-el','2007-06-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00121-8','NULL','v1','2007-04-03','NULL',' Mathis. Y. -L. ','704.0368','Pashkin','Metal-insulator transition in the low-dimensional organic conductor
  (TMTSF)2FSO3 probed by infrared microspectroscopy','cond-mat.str-el','2007-06-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00121-8','NULL','v1','2007-04-03','NULL',' Kang. W. ','704.0368','Pashkin','Metal-insulator transition in the low-dimensional organic conductor
  (TMTSF)2FSO3 probed by infrared microspectroscopy','cond-mat.str-el','2007-06-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1140/epjb/e2007-00121-8','NULL','v1','2007-04-03','NULL',' Kuntscher. C. A. ','704.0368','Pashkin','Metal-insulator transition in the low-dimensional organic conductor
  (TMTSF)2FSO3 probed by infrared microspectroscopy','cond-mat.str-el','2007-06-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1142/9789812790750_0027','NULL','v1','2007-04-03','NULL','Honda. Minako. ','704.0369','Takeuchi','The effect of Topcolor Assisted Technicolor, and other models, on
  Neutrino Oscillation','hep-ph','2017-08-23','7','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1142/9789812790750_0027','NULL','v1','2007-04-03','NULL',' Kao. Yee. ','704.0369','Takeuchi','The effect of Topcolor Assisted Technicolor, and other models, on
  Neutrino Oscillation','hep-ph','2017-08-23','7','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1142/9789812790750_0027','NULL','v1','2007-04-03','NULL',' Okamura. Naotoshi. ','704.0369','Takeuchi','The effect of Topcolor Assisted Technicolor, and other models, on
  Neutrino Oscillation','hep-ph','2017-08-23','7','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1142/9789812790750_0027','NULL','v1','2007-04-03','NULL',' Pronin. Alexey. ','704.0369','Takeuchi','The effect of Topcolor Assisted Technicolor, and other models, on
  Neutrino Oscillation','hep-ph','2017-08-23','7','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1142/9789812790750_0027','NULL','v1','2007-04-03','NULL',' Takeuchi. Tatsu. ','704.0369','Takeuchi','The effect of Topcolor Assisted Technicolor, and other models, on
  Neutrino Oscillation','hep-ph','2017-08-23','7','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1038/nphys618','NULL','v1','2007-04-03','NULL','Boulle. O. ','704.037','Grollier','Shaped angular dependence of the spin transfer torque and microwave
  generation without magnetic field','cond-mat.mtrl-sci','2015-05-13','7','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1038/nphys618','NULL','v1','2007-04-03','NULL',' Cros. V. ','704.037','Grollier','Shaped angular dependence of the spin transfer torque and microwave
  generation without magnetic field','cond-mat.mtrl-sci','2015-05-13','7','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1038/nphys618','NULL','v1','2007-04-03','NULL',' Grollier. J. ','704.037','Grollier','Shaped angular dependence of the spin transfer torque and microwave
  generation without magnetic field','cond-mat.mtrl-sci','2015-05-13','7','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1038/nphys618','NULL','v1','2007-04-03','NULL',' Pereira. L. G. ','704.037','Grollier','Shaped angular dependence of the spin transfer torque and microwave
  generation without magnetic field','cond-mat.mtrl-sci','2015-05-13','7','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1038/nphys618','NULL','v1','2007-04-03','NULL',' Deranlot. C. ','704.037','Grollier','Shaped angular dependence of the spin transfer torque and microwave
  generation without magnetic field','cond-mat.mtrl-sci','2015-05-13','7','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1038/nphys618','NULL','v1','2007-04-03','NULL',' Petroff. F. ','704.037','Grollier','Shaped angular dependence of the spin transfer torque and microwave
  generation without magnetic field','cond-mat.mtrl-sci','2015-05-13','7','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1038/nphys618','NULL','v1','2007-04-03','NULL',' Faini. G. ','704.037','Grollier','Shaped angular dependence of the spin transfer torque and microwave
  generation without magnetic field','cond-mat.mtrl-sci','2015-05-13','7','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1038/nphys618','NULL','v1','2007-04-03','NULL',' Barnas. J. ','704.037','Grollier','Shaped angular dependence of the spin transfer torque and microwave
  generation without magnetic field','cond-mat.mtrl-sci','2015-05-13','7','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1038/nphys618','NULL','v1','2007-04-03','NULL',' Fert. A. ','704.037','Grollier','Shaped angular dependence of the spin transfer torque and microwave
  generation without magnetic field','cond-mat.mtrl-sci','2015-05-13','7','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1007/s10714-007-0428-0','NULL','v1','2007-04-03','NULL','Kremer. G. M. ','704.0371','Kremer','Dark energy interacting with neutrinos and dark matter: a
  phenomenological theory','gr-qc','2008-11-26','7','5','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1751-8113/40/11/013','NULL','v1','2007-04-03','NULL','Site. L. Delle. ','704.0372','Site','Levy-Lieb constrained-search formulation as a minimization of the
  correlation functional','quant-ph','2015-05-13','9','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.combustflame.2006.07.004','NULL','v1','2007-04-03','NULL','Gueniche. Hadj-Ali. DCPR. Glaude. Pierre-Alexandre. DCPR. Dayma. Guillaume. DCPR. Fournet. René. DCPR. Battin-Leclerc. Frédérique. DCPR','704.0375','Hagnier','Rich methane premixed laminar flames doped by light unsaturated
  hydrocarbons - Part I : allene and propyne','physics.chem-ph','2016-08-14','9','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.012337','NULL','v1','2007-04-03','NULL','Parodi. Daniele. ','704.0376','Parodi','Environmental noise reduction for holonomic quantum gates','quant-ph','2009-11-13','7','2','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.012337','NULL','v1','2007-04-03','NULL',' Sassetti. Maura. ','704.0376','Parodi','Environmental noise reduction for holonomic quantum gates','quant-ph','2009-11-13','7','2','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.012337','NULL','v1','2007-04-03','NULL',' Solinas. Paolo. ','704.0376','Parodi','Environmental noise reduction for holonomic quantum gates','quant-ph','2009-11-13','7','2','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.012337','NULL','v1','2007-04-03','NULL',' Zanghì. Nino. ','704.0376','Parodi','Environmental noise reduction for holonomic quantum gates','quant-ph','2009-11-13','7','2','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.012337','NULL','v2','2007-07-02','NULL','Parodi. Daniele. ','704.0376','Parodi','Environmental noise reduction for holonomic quantum gates','quant-ph','2009-11-13','7','2','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.012337','NULL','v2','2007-07-02','NULL',' Sassetti. Maura. ','704.0376','Parodi','Environmental noise reduction for holonomic quantum gates','quant-ph','2009-11-13','7','2','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.012337','NULL','v2','2007-07-02','NULL',' Solinas. Paolo. ','704.0376','Parodi','Environmental noise reduction for holonomic quantum gates','quant-ph','2009-11-13','7','2','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.012337','NULL','v2','2007-07-02','NULL',' Zanghì. Nino. ','704.0376','Parodi','Environmental noise reduction for holonomic quantum gates','quant-ph','2009-11-13','7','2','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/0954-3899/36/4/045001','NULL','v1','2007-04-03','NULL','Binosi. Daniele. ECT*. Trento. Pascalutsa. Vladimir. ECT*. Trento &n  Mainz U.','704.0377','Pascalutsa','The lifetime of unstable particles in electromagnetic fields','hep-ph','2009-09-01','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/0954-3899/36/4/045001','NULL','v2','2007-04-04','NULL','Binosi. Daniele. ECT*. Trento. Pascalutsa. Vladimir. ECT*. Trento &n  Mainz U.','704.0377','Pascalutsa','The lifetime of unstable particles in electromagnetic fields','hep-ph','2009-09-01','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/0954-3899/36/4/045001','NULL','v3','2008-12-22','NULL','Binosi. Daniele. ECT*. Trento. Pascalutsa. Vladimir. ECT*. Trento &n  Mainz U.','704.0377','Pascalutsa','The lifetime of unstable particles in electromagnetic fields','hep-ph','2009-09-01','11','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2130690','NULL','v1','2007-04-03','NULL','Virnau. P. ','704.0379','Virnau','Capturing knots in polymers','cond-mat.soft','2007-11-28','2','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2130690','NULL','v1','2007-04-03','NULL',' Kardar. M. ','704.0379','Virnau','Capturing knots in polymers','cond-mat.soft','2007-11-28','2','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2130690','NULL','v1','2007-04-03','NULL',' Kantor. Y. ','704.0379','Virnau','Capturing knots in polymers','cond-mat.soft','2007-11-28','2','4','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1214/105051606000000853','NULL','v1','2007-04-03','NULL','Git. Y. ','704.038','Harris','Exponential growth rates in a typed branching diffusion','math.PR','2007-05-23','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1214/105051606000000853','NULL','v1','2007-04-03','NULL',' Harris. J. W. ','704.038','Harris','Exponential growth rates in a typed branching diffusion','math.PR','2007-05-23','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1214/105051606000000853','NULL','v1','2007-04-03','NULL',' Harris. S. C. ','704.038','Harris','Exponential growth rates in a typed branching diffusion','math.PR','2007-05-23','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.12403.x','NULL','v1','2007-04-03','NULL','Angus. Garry W. St. Andrews. McGaugh. Stacy S. Maryland','704.0381','Angus','The collision velocity of the bullet cluster in conventional and
  modified dynamics','astro-ph','2009-11-13','8','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1365-2966.2007.12403.x','NULL','v2','2007-09-02','NULL','Angus. Garry W. St. Andrews. McGaugh. Stacy S. Maryland','704.0381','Angus','The collision velocity of the bullet cluster in conventional and
  modified dynamics','astro-ph','2009-11-13','8','4','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2746582','NULL','v1','2007-04-03','NULL','Artemenkov. D. A. ','704.0384','Artemenkov','Clustering features of $^9$Be, $^\{14\}$N, $^7$Be, and $^8$B nuclei in
  relativistic fragmentation','nucl-ex','2008-11-26','14','6','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2746582','NULL','v1','2007-04-03','NULL',' Shchedrina. T. V. ','704.0384','Artemenkov','Clustering features of $^9$Be, $^\{14\}$N, $^7$Be, and $^8$B nuclei in
  relativistic fragmentation','nucl-ex','2008-11-26','14','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2746582','NULL','v1','2007-04-03','NULL',' Stanoeva. R. ','704.0384','Artemenkov','Clustering features of $^9$Be, $^\{14\}$N, $^7$Be, and $^8$B nuclei in
  relativistic fragmentation','nucl-ex','2008-11-26','14','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1063/1.2746582','NULL','v1','2007-04-03','NULL',' Zarubin. P. I. ','704.0384','Artemenkov','Clustering features of $^9$Be, $^\{14\}$N, $^7$Be, and $^8$B nuclei in
  relativistic fragmentation','nucl-ex','2008-11-26','14','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.021601','NULL','v1','2007-04-03','NULL','Ogren. M. ','704.0385','Ogren','Super-shell structures and pairing in ultracold trapped Fermi gases','cond-mat.other','2007-08-02','4','2','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.76.021601','NULL','v1','2007-04-03','NULL',' Heiselberg. H. ','704.0385','Ogren','Super-shell structures and pairing in ultracold trapped Fermi gases','cond-mat.other','2007-08-02','4','2','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.150401','NULL','v1','2007-04-03','NULL','Laloë. Franck. LKB - Lhomond. Mullin. William J. UMASS','704.0386','Laloe','Quantum non-local effects with Bose-Einstein condensates','quant-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.150401','NULL','v2','2007-04-04','NULL','Laloë. Franck. LKB - Lhomond. Mullin. William J. UMASS','704.0386','Laloe','Quantum non-local effects with Bose-Einstein condensates','quant-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.150401','NULL','v3','2007-07-25','NULL','Laloë. Franck. LKB - Lhomond. Mullin. William J. UMASS','704.0386','Laloe','Quantum non-local effects with Bose-Einstein condensates','quant-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.99.150401','NULL','v4','2007-10-11','NULL','Laloë. Franck. LKB - Lhomond. Mullin. William J. UMASS','704.0386','Laloe','Quantum non-local effects with Bose-Einstein condensates','quant-ph','2009-11-13','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1002/asna.200610770','NULL','v1','2007-04-03','NULL','Eisenbeiss. T. ','704.0387','Eisenbeiss','Low mass visual binaries in the solar neighbourhood: The case of
  HD141272','astro-ph','2009-11-13','6','6','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1002/asna.200610770','NULL','v1','2007-04-03','NULL',' Seifahrt. A. ','704.0387','Eisenbeiss','Low mass visual binaries in the solar neighbourhood: The case of
  HD141272','astro-ph','2009-11-13','6','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1002/asna.200610770','NULL','v1','2007-04-03','NULL',' Mugrauer. M. ','704.0387','Eisenbeiss','Low mass visual binaries in the solar neighbourhood: The case of
  HD141272','astro-ph','2009-11-13','6','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1002/asna.200610770','NULL','v1','2007-04-03','NULL',' Schmidt. T. O. B. ','704.0387','Eisenbeiss','Low mass visual binaries in the solar neighbourhood: The case of
  HD141272','astro-ph','2009-11-13','6','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1002/asna.200610770','NULL','v1','2007-04-03','NULL',' Neuhaeuser. R. ','704.0387','Eisenbeiss','Low mass visual binaries in the solar neighbourhood: The case of
  HD141272','astro-ph','2009-11-13','6','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1002/asna.200610770','NULL','v1','2007-04-03','NULL',' Roell. T. ','704.0387','Eisenbeiss','Low mass visual binaries in the solar neighbourhood: The case of
  HD141272','astro-ph','2009-11-13','6','6','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/12/013','NULL','v1','2007-04-03','NULL','Donini. A. ','704.0388','Dr.','Sterile neutrinos at the CNGS','hep-ph','2009-01-06','0','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/12/013','NULL','v1','2007-04-03','NULL',' Maltoni. M. ','704.0388','Dr.','Sterile neutrinos at the CNGS','hep-ph','2009-01-06','0','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/12/013','NULL','v1','2007-04-03','NULL',' Meloni. D. ','704.0388','Dr.','Sterile neutrinos at the CNGS','hep-ph','2009-01-06','0','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/12/013','NULL','v1','2007-04-03','NULL',' Migliozzi. P. ','704.0388','Dr.','Sterile neutrinos at the CNGS','hep-ph','2009-01-06','0','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/12/013','NULL','v1','2007-04-03','NULL',' Terranova. F. ','704.0388','Dr.','Sterile neutrinos at the CNGS','hep-ph','2009-01-06','0','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/12/013','NULL','v2','2007-10-11','NULL','Donini. A. ','704.0388','Dr.','Sterile neutrinos at the CNGS','hep-ph','2009-01-06','0','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/12/013','NULL','v2','2007-10-11','NULL',' Maltoni. M. ','704.0388','Dr.','Sterile neutrinos at the CNGS','hep-ph','2009-01-06','0','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/12/013','NULL','v2','2007-10-11','NULL',' Meloni. D. ','704.0388','Dr.','Sterile neutrinos at the CNGS','hep-ph','2009-01-06','0','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/12/013','NULL','v2','2007-10-11','NULL',' Migliozzi. P. ','704.0388','Dr.','Sterile neutrinos at the CNGS','hep-ph','2009-01-06','0','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/1126-6708/2007/12/013','NULL','v2','2007-10-11','NULL',' Terranova. F. ','704.0388','Dr.','Sterile neutrinos at the CNGS','hep-ph','2009-01-06','0','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v1','2007-04-03','NULL','Flanagan. Eanna E. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v1','2007-04-03','NULL',' Hinderer. Tanja. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v2','2007-04-17','NULL','Flanagan. Eanna E. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v2','2007-04-17','NULL',' Hinderer. Tanja. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v3','2007-05-07','NULL','Flanagan. Eanna E. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v3','2007-05-07','NULL',' Hinderer. Tanja. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v4','2010-06-14','NULL','Flanagan. Eanna E. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v4','2010-06-14','NULL',' Hinderer. Tanja. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v5','2010-09-03','NULL','Flanagan. Eanna E. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v5','2010-09-03','NULL',' Hinderer. Tanja. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v6','2010-12-01','NULL','Flanagan. Eanna E. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v6','2010-12-01','NULL',' Hinderer. Tanja. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v7','2010-12-07','NULL','Flanagan. Eanna E. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v7','2010-12-07','NULL',' Hinderer. Tanja. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v8','2011-07-22','NULL','Flanagan. Eanna E. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevD.75.124007 10.1103/PhysRevD.82.029901
  10.1103/PhysRevD.82.129903','NULL','v8','2011-07-22','NULL',' Hinderer. Tanja. ','704.0389','Hinderer','Evolution of the Carter constant for inspirals into a black hole: effect
  of the black hole quadrupole','gr-qc','2011-07-25','22','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1134/S1063776107100159','NULL','v1','2007-04-03','NULL','Kozlov. G. G. ','704.0391','Gennadievich','Exactly solvable spin dynamics of an electron coupled to large number of
  nuclei and the electron-nuclear spin echo in a quantum dot','cond-mat.mes-hall','2009-11-13','0','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1134/S1063776107100159','NULL','v2','2007-04-04','NULL','Kozlov. G. G. ','704.0391','Gennadievich','Exactly solvable spin dynamics of an electron coupled to large number of
  nuclei and the electron-nuclear spin echo in a quantum dot','cond-mat.mes-hall','2009-11-13','0','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1134/S1063776107100159','NULL','v3','2007-04-10','NULL','Kozlov. G. G. ','704.0391','Gennadievich','Exactly solvable spin dynamics of an electron coupled to large number of
  nuclei and the electron-nuclear spin echo in a quantum dot','cond-mat.mes-hall','2009-11-13','0','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1460-9568.2007.05574.x','NULL','v1','2007-04-03','NULL','Kaiser. Marcus. ','704.0392','Kaiser','Simulation of Robustness against Lesions of Cortical Networks','q-bio.NC','2008-08-27','0','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1460-9568.2007.05574.x','NULL','v1','2007-04-03','NULL',' Martin. Robert. ','704.0392','Kaiser','Simulation of Robustness against Lesions of Cortical Networks','q-bio.NC','2008-08-27','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1460-9568.2007.05574.x','NULL','v1','2007-04-03','NULL',' Andras. Peter. ','704.0392','Kaiser','Simulation of Robustness against Lesions of Cortical Networks','q-bio.NC','2008-08-27','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1111/j.1460-9568.2007.05574.x','NULL','v1','2007-04-03','NULL',' Young. Malcolm P. ','704.0392','Kaiser','Simulation of Robustness against Lesions of Cortical Networks','q-bio.NC','2008-08-27','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1088/0957-4484/18/17/175703','NULL','v1','2007-04-03','NULL','Hendy. S. C. ','704.0393','Hendy','A thermodynamic model for the melting of supported metal nanoparticles','cond-mat.mtrl-sci','2007-05-23','7','2','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1214/105051606000000790','NULL','v1','2007-04-03','NULL','Jaśkiewicz. Anna. ','704.0394','Ja\{s\}kiewicz','Average optimality for risk-sensitive control with general state space','q-fin.RM','2016-08-14','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.266406','NULL','v1','2007-04-03','NULL','Cha. Min-Chul. ','704.0396','Cha','Finite-temperature phase transitions in a two-dimensional boson Hubbard
  model','cond-mat.str-el','2009-11-13','4','7','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevLett.98.266406','NULL','v1','2007-04-03','NULL',' Lee. Ji-Woo. ','704.0396','Cha','Finite-temperature phase transitions in a two-dimensional boson Hubbard
  model','cond-mat.str-el','2009-11-13','4','7','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.75.063803','NULL','v1','2007-04-03','NULL','Nielsen. Anne E. B. ','704.0397','Nielsen','Conditional generation of path-entangled optical NOON states','quant-ph','2007-06-07','7','5','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.75.063803','NULL','v1','2007-04-03','NULL',' Molmer. Klaus. ','704.0397','Nielsen','Conditional generation of path-entangled optical NOON states','quant-ph','2007-06-07','7','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.75.063803','NULL','v2','2007-06-07','NULL','Nielsen. Anne E. B. ','704.0397','Nielsen','Conditional generation of path-entangled optical NOON states','quant-ph','2007-06-07','7','5','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1103/PhysRevA.75.063803','NULL','v2','2007-06-07','NULL',' Molmer. Klaus. ','704.0397','Nielsen','Conditional generation of path-entangled optical NOON states','quant-ph','2007-06-07','7','5','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1214/105051606000000862','NULL','v1','2007-04-03','NULL','Dennert. Florian. ','704.0398','Gr"\{u\}bel','Renewals for exponentially increasing lifetimes, with an application to
  digital search trees','math.PR','2016-08-14','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1214/105051606000000862','NULL','v1','2007-04-03','NULL',' Grübel. Rudolf. ','704.0398','Gr"\{u\}bel','Renewals for exponentially increasing lifetimes, with an application to
  digital search trees','math.PR','2016-08-14','0','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physletb.2007.05.052','NULL','v1','2007-04-03','NULL','Clement. G. ','704.0399','Clement','Hawking radiation of linear dilaton black holes','gr-qc','2008-11-26','9','0','2007','4','1') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physletb.2007.05.052','NULL','v1','2007-04-03','NULL',' Fabris. J. C. ','704.0399','Clement','Hawking radiation of linear dilaton black holes','gr-qc','2008-11-26','9','0','2007','4','2') ;
INSERT INTO staging_article_data VALUES ('NULL','10.1016/j.physletb.2007.05.052','NULL','v1','2007-04-03','NULL',' Marques. G. T. ','704.0399','Clement','Hawking radiation of linear dilaton black holes','gr-qc','2008-11-26','9','0','2007','4','2') ;
