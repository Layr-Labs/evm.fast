import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify815
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body831_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_ecrecover" []

def body831_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body831_2 : Prog (BitVec 64) :=
.seq body831_0 body831_1

def body831_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body831_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 1#64)) body831_2 body831_3

def body831_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_sha256" []

def body831_6 : Prog (BitVec 64) :=
.seq body831_5 body831_1

def body831_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 2#64)) body831_6 body831_3

def body831_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_ripemd160" []

def body831_9 : Prog (BitVec 64) :=
.seq body831_8 body831_1

def body831_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 3#64)) body831_9 body831_3

def body831_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_identity" []

def body831_12 : Prog (BitVec 64) :=
.seq body831_11 body831_1

def body831_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 4#64)) body831_12 body831_3

def body831_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_alt_bn128_add" []

def body831_15 : Prog (BitVec 64) :=
.seq body831_14 body831_1

def body831_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 6#64)) body831_15 body831_3

def body831_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_alt_bn128_mul" []

def body831_18 : Prog (BitVec 64) :=
.seq body831_17 body831_1

def body831_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 7#64)) body831_18 body831_3

def body831_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_alt_bn128_pairing_check" []

def body831_21 : Prog (BitVec 64) :=
.seq body831_20 body831_1

def body831_22 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 8#64)) body831_21 body831_3

def body831_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_modexp" []

def body831_24 : Prog (BitVec 64) :=
.seq body831_23 body831_1

def body831_25 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 5#64)) body831_24 body831_3

def body831_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_blake2f" []

def body831_27 : Prog (BitVec 64) :=
.seq body831_26 body831_1

def body831_28 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 9#64)) body831_27 body831_3

def body831_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_kzg_point_evaluation" []

def body831_30 : Prog (BitVec 64) :=
.seq body831_29 body831_1

def body831_31 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 10#64)) body831_30 body831_3

def body831_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_bls_g1_add" []

def body831_33 : Prog (BitVec 64) :=
.seq body831_32 body831_1

def body831_34 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 11#64)) body831_33 body831_3

def body831_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_bls_g1_msm" []

def body831_36 : Prog (BitVec 64) :=
.seq body831_35 body831_1

def body831_37 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 12#64)) body831_36 body831_3

def body831_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_bls_g2_add" []

def body831_39 : Prog (BitVec 64) :=
.seq body831_38 body831_1

def body831_40 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 13#64)) body831_39 body831_3

def body831_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_bls_g2_msm" []

def body831_42 : Prog (BitVec 64) :=
.seq body831_41 body831_1

def body831_43 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 14#64)) body831_42 body831_3

def body831_44 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_bls_pairing" []

def body831_45 : Prog (BitVec 64) :=
.seq body831_44 body831_1

def body831_46 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 15#64)) body831_45 body831_3

def body831_47 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_bls_map_fp_to_g1" []

def body831_48 : Prog (BitVec 64) :=
.seq body831_47 body831_1

def body831_49 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 16#64)) body831_48 body831_3

def body831_50 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_bls_map_fp2_to_g2" []

def body831_51 : Prog (BitVec 64) :=
.seq body831_50 body831_1

def body831_52 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 17#64)) body831_51 body831_3

def body831_53 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_p256verify" []

def body831_54 : Prog (BitVec 64) :=
.seq body831_53 body831_1

def body831_55 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 18#64)) body831_54 body831_3

def body831_56 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 99#64)

def body831_57 : Prog (BitVec 64) :=
.seq body831_56 body831_1

def body831_58 : Prog (BitVec 64) :=
.seq body831_55 body831_57

def body831_59 : Prog (BitVec 64) :=
.seq body831_52 body831_58

def body831_60 : Prog (BitVec 64) :=
.seq body831_49 body831_59

def body831_61 : Prog (BitVec 64) :=
.seq body831_46 body831_60

def body831_62 : Prog (BitVec 64) :=
.seq body831_43 body831_61

def body831_63 : Prog (BitVec 64) :=
.seq body831_40 body831_62

def body831_64 : Prog (BitVec 64) :=
.seq body831_37 body831_63

def body831_65 : Prog (BitVec 64) :=
.seq body831_34 body831_64

def body831_66 : Prog (BitVec 64) :=
.seq body831_31 body831_65

def body831_67 : Prog (BitVec 64) :=
.seq body831_28 body831_66

def body831_68 : Prog (BitVec 64) :=
.seq body831_25 body831_67

def body831_69 : Prog (BitVec 64) :=
.seq body831_22 body831_68

def body831_70 : Prog (BitVec 64) :=
.seq body831_19 body831_69

def body831_71 : Prog (BitVec 64) :=
.seq body831_16 body831_70

def body831_72 : Prog (BitVec 64) :=
.seq body831_13 body831_71

def body831_73 : Prog (BitVec 64) :=
.seq body831_10 body831_72

def body831_74 : Prog (BitVec 64) :=
.seq body831_7 body831_73

def body831_75 : Prog (BitVec 64) :=
.seq body831_4 body831_74

def body831_76 : Prog (BitVec 64) :=
.seq body831_4 body831_7

def body831_77 : Prog (BitVec 64) :=
.seq body831_76 body831_10

def body831_78 : Prog (BitVec 64) :=
.seq body831_77 body831_13

def body831_79 : Prog (BitVec 64) :=
.seq body831_78 body831_16

def body831_80 : Prog (BitVec 64) :=
.seq body831_79 body831_19

def body831_81 : Prog (BitVec 64) :=
.seq body831_80 body831_22

def body831_82 : Prog (BitVec 64) :=
.seq body831_81 body831_25

def body831_83 : Prog (BitVec 64) :=
.seq body831_82 body831_28

def body831_84 : Prog (BitVec 64) :=
.seq body831_83 body831_31

def body831_85 : Prog (BitVec 64) :=
.seq body831_84 body831_34

def body831_86 : Prog (BitVec 64) :=
.seq body831_85 body831_37

def body831_87 : Prog (BitVec 64) :=
.seq body831_86 body831_40

def body831_88 : Prog (BitVec 64) :=
.seq body831_87 body831_43

def body831_89 : Prog (BitVec 64) :=
.seq body831_88 body831_46

def body831_90 : Prog (BitVec 64) :=
.seq body831_89 body831_49

def body831_91 : Prog (BitVec 64) :=
.seq body831_90 body831_52

def body831_92 : Prog (BitVec 64) :=
.seq body831_91 body831_55

def body831_93 : Prog (BitVec 64) :=
.seq body831_92 body831_56

def body831_94 : Prog (BitVec 64) :=
.seq body831_93 body831_1

def originalData831 : Decl (BitVec 64) :=
.function { name := "run_precompile", inline := false, exported := false, params := [("idx", Flapjack.Shape.one)], body := body831_75, returnShape := (Flapjack.Shape.one) }
def simplifiedData831 : Decl (BitVec 64) :=
.function { name := "run_precompile", inline := false, exported := false, params := [("idx", Flapjack.Shape.one)], body := body831_94, returnShape := (Flapjack.Shape.one) }
def original831 := Pancake.PanLang.declToHOL originalData831
def simplified831 := Pancake.PanLang.declToHOL simplifiedData831
end InitECandidate.Proofs.FrontendStages.Declarations
