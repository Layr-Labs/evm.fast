import InitECandidate.Proofs.FrontendStages.Crep.Translate757
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody773_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_ecrecover" []

def crepBody773_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_0

def crepBody773_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody773_3 : CrepProg (BitVec 64) :=
.seq crepBody773_1 crepBody773_2

def crepBody773_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody773_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 1#64)) crepBody773_3 crepBody773_4

def crepBody773_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_sha256" []

def crepBody773_7 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_6

def crepBody773_8 : CrepProg (BitVec 64) :=
.seq crepBody773_7 crepBody773_2

def crepBody773_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 2#64)) crepBody773_8 crepBody773_4

def crepBody773_10 : CrepProg (BitVec 64) :=
.seq crepBody773_5 crepBody773_9

def crepBody773_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_ripemd160" []

def crepBody773_12 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_11

def crepBody773_13 : CrepProg (BitVec 64) :=
.seq crepBody773_12 crepBody773_2

def crepBody773_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 3#64)) crepBody773_13 crepBody773_4

def crepBody773_15 : CrepProg (BitVec 64) :=
.seq crepBody773_10 crepBody773_14

def crepBody773_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_identity" []

def crepBody773_17 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_16

def crepBody773_18 : CrepProg (BitVec 64) :=
.seq crepBody773_17 crepBody773_2

def crepBody773_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 4#64)) crepBody773_18 crepBody773_4

def crepBody773_20 : CrepProg (BitVec 64) :=
.seq crepBody773_15 crepBody773_19

def crepBody773_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_alt_bn128_add" []

def crepBody773_22 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_21

def crepBody773_23 : CrepProg (BitVec 64) :=
.seq crepBody773_22 crepBody773_2

def crepBody773_24 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 6#64)) crepBody773_23 crepBody773_4

def crepBody773_25 : CrepProg (BitVec 64) :=
.seq crepBody773_20 crepBody773_24

def crepBody773_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_alt_bn128_mul" []

def crepBody773_27 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_26

def crepBody773_28 : CrepProg (BitVec 64) :=
.seq crepBody773_27 crepBody773_2

def crepBody773_29 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 7#64)) crepBody773_28 crepBody773_4

def crepBody773_30 : CrepProg (BitVec 64) :=
.seq crepBody773_25 crepBody773_29

def crepBody773_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_alt_bn128_pairing_check" []

def crepBody773_32 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_31

def crepBody773_33 : CrepProg (BitVec 64) :=
.seq crepBody773_32 crepBody773_2

def crepBody773_34 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 8#64)) crepBody773_33 crepBody773_4

def crepBody773_35 : CrepProg (BitVec 64) :=
.seq crepBody773_30 crepBody773_34

def crepBody773_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_modexp" []

def crepBody773_37 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_36

def crepBody773_38 : CrepProg (BitVec 64) :=
.seq crepBody773_37 crepBody773_2

def crepBody773_39 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 5#64)) crepBody773_38 crepBody773_4

def crepBody773_40 : CrepProg (BitVec 64) :=
.seq crepBody773_35 crepBody773_39

def crepBody773_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_blake2f" []

def crepBody773_42 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_41

def crepBody773_43 : CrepProg (BitVec 64) :=
.seq crepBody773_42 crepBody773_2

def crepBody773_44 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 9#64)) crepBody773_43 crepBody773_4

def crepBody773_45 : CrepProg (BitVec 64) :=
.seq crepBody773_40 crepBody773_44

def crepBody773_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_kzg_point_evaluation" []

def crepBody773_47 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_46

def crepBody773_48 : CrepProg (BitVec 64) :=
.seq crepBody773_47 crepBody773_2

def crepBody773_49 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 10#64)) crepBody773_48 crepBody773_4

def crepBody773_50 : CrepProg (BitVec 64) :=
.seq crepBody773_45 crepBody773_49

def crepBody773_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_bls_g1_add" []

def crepBody773_52 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_51

def crepBody773_53 : CrepProg (BitVec 64) :=
.seq crepBody773_52 crepBody773_2

def crepBody773_54 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 11#64)) crepBody773_53 crepBody773_4

def crepBody773_55 : CrepProg (BitVec 64) :=
.seq crepBody773_50 crepBody773_54

def crepBody773_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_bls_g1_msm" []

def crepBody773_57 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_56

def crepBody773_58 : CrepProg (BitVec 64) :=
.seq crepBody773_57 crepBody773_2

def crepBody773_59 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 12#64)) crepBody773_58 crepBody773_4

def crepBody773_60 : CrepProg (BitVec 64) :=
.seq crepBody773_55 crepBody773_59

def crepBody773_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_bls_g2_add" []

def crepBody773_62 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_61

def crepBody773_63 : CrepProg (BitVec 64) :=
.seq crepBody773_62 crepBody773_2

def crepBody773_64 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 13#64)) crepBody773_63 crepBody773_4

def crepBody773_65 : CrepProg (BitVec 64) :=
.seq crepBody773_60 crepBody773_64

def crepBody773_66 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_bls_g2_msm" []

def crepBody773_67 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_66

def crepBody773_68 : CrepProg (BitVec 64) :=
.seq crepBody773_67 crepBody773_2

def crepBody773_69 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 14#64)) crepBody773_68 crepBody773_4

def crepBody773_70 : CrepProg (BitVec 64) :=
.seq crepBody773_65 crepBody773_69

def crepBody773_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_bls_pairing" []

def crepBody773_72 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_71

def crepBody773_73 : CrepProg (BitVec 64) :=
.seq crepBody773_72 crepBody773_2

def crepBody773_74 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 15#64)) crepBody773_73 crepBody773_4

def crepBody773_75 : CrepProg (BitVec 64) :=
.seq crepBody773_70 crepBody773_74

def crepBody773_76 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_bls_map_fp_to_g1" []

def crepBody773_77 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_76

def crepBody773_78 : CrepProg (BitVec 64) :=
.seq crepBody773_77 crepBody773_2

def crepBody773_79 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 16#64)) crepBody773_78 crepBody773_4

def crepBody773_80 : CrepProg (BitVec 64) :=
.seq crepBody773_75 crepBody773_79

def crepBody773_81 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_bls_map_fp2_to_g2" []

def crepBody773_82 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_81

def crepBody773_83 : CrepProg (BitVec 64) :=
.seq crepBody773_82 crepBody773_2

def crepBody773_84 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 17#64)) crepBody773_83 crepBody773_4

def crepBody773_85 : CrepProg (BitVec 64) :=
.seq crepBody773_80 crepBody773_84

def crepBody773_86 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pre_p256verify" []

def crepBody773_87 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody773_86

def crepBody773_88 : CrepProg (BitVec 64) :=
.seq crepBody773_87 crepBody773_2

def crepBody773_89 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 18#64)) crepBody773_88 crepBody773_4

def crepBody773_90 : CrepProg (BitVec 64) :=
.seq crepBody773_85 crepBody773_89

def crepBody773_91 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 1)

def crepBody773_92 : CrepProg (BitVec 64) :=
.seq crepBody773_91 crepBody773_4

def crepBody773_93 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 99#64) crepBody773_92

def crepBody773_94 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 4#64

def crepBody773_95 : CrepProg (BitVec 64) :=
.seq crepBody773_93 crepBody773_94

def crepBody773_96 : CrepProg (BitVec 64) :=
.seq crepBody773_90 crepBody773_95

def crepBody773_97 : CrepProg (BitVec 64) :=
.seq crepBody773_96 crepBody773_2

def data773 : CrepProg (BitVec 64) := crepBody773_97
def output773 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 117#8, 110#8, 95#8, 112#8, 114#8, 101#8, 99#8, 111#8, 109#8, 112#8, 105#8, 108#8, 101#8], [0], crepProgToHOL data773)
end InitECandidate.Proofs.FrontendStages.Crep
