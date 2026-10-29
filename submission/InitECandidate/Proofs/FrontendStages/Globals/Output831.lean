import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data831
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate815
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody831_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_ecrecover" []

def globalBody831_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody831_2 : Prog (BitVec 64) :=
.seq globalBody831_0 globalBody831_1

def globalBody831_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody831_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 1#64)) globalBody831_2 globalBody831_3

def globalBody831_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_sha256" []

def globalBody831_6 : Prog (BitVec 64) :=
.seq globalBody831_5 globalBody831_1

def globalBody831_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 2#64)) globalBody831_6 globalBody831_3

def globalBody831_8 : Prog (BitVec 64) :=
.seq globalBody831_4 globalBody831_7

def globalBody831_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_ripemd160" []

def globalBody831_10 : Prog (BitVec 64) :=
.seq globalBody831_9 globalBody831_1

def globalBody831_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 3#64)) globalBody831_10 globalBody831_3

def globalBody831_12 : Prog (BitVec 64) :=
.seq globalBody831_8 globalBody831_11

def globalBody831_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_identity" []

def globalBody831_14 : Prog (BitVec 64) :=
.seq globalBody831_13 globalBody831_1

def globalBody831_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 4#64)) globalBody831_14 globalBody831_3

def globalBody831_16 : Prog (BitVec 64) :=
.seq globalBody831_12 globalBody831_15

def globalBody831_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_alt_bn128_add" []

def globalBody831_18 : Prog (BitVec 64) :=
.seq globalBody831_17 globalBody831_1

def globalBody831_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 6#64)) globalBody831_18 globalBody831_3

def globalBody831_20 : Prog (BitVec 64) :=
.seq globalBody831_16 globalBody831_19

def globalBody831_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_alt_bn128_mul" []

def globalBody831_22 : Prog (BitVec 64) :=
.seq globalBody831_21 globalBody831_1

def globalBody831_23 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 7#64)) globalBody831_22 globalBody831_3

def globalBody831_24 : Prog (BitVec 64) :=
.seq globalBody831_20 globalBody831_23

def globalBody831_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_alt_bn128_pairing_check" []

def globalBody831_26 : Prog (BitVec 64) :=
.seq globalBody831_25 globalBody831_1

def globalBody831_27 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 8#64)) globalBody831_26 globalBody831_3

def globalBody831_28 : Prog (BitVec 64) :=
.seq globalBody831_24 globalBody831_27

def globalBody831_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_modexp" []

def globalBody831_30 : Prog (BitVec 64) :=
.seq globalBody831_29 globalBody831_1

def globalBody831_31 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 5#64)) globalBody831_30 globalBody831_3

def globalBody831_32 : Prog (BitVec 64) :=
.seq globalBody831_28 globalBody831_31

def globalBody831_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_blake2f" []

def globalBody831_34 : Prog (BitVec 64) :=
.seq globalBody831_33 globalBody831_1

def globalBody831_35 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 9#64)) globalBody831_34 globalBody831_3

def globalBody831_36 : Prog (BitVec 64) :=
.seq globalBody831_32 globalBody831_35

def globalBody831_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_kzg_point_evaluation" []

def globalBody831_38 : Prog (BitVec 64) :=
.seq globalBody831_37 globalBody831_1

def globalBody831_39 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 10#64)) globalBody831_38 globalBody831_3

def globalBody831_40 : Prog (BitVec 64) :=
.seq globalBody831_36 globalBody831_39

def globalBody831_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_bls_g1_add" []

def globalBody831_42 : Prog (BitVec 64) :=
.seq globalBody831_41 globalBody831_1

def globalBody831_43 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 11#64)) globalBody831_42 globalBody831_3

def globalBody831_44 : Prog (BitVec 64) :=
.seq globalBody831_40 globalBody831_43

def globalBody831_45 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_bls_g1_msm" []

def globalBody831_46 : Prog (BitVec 64) :=
.seq globalBody831_45 globalBody831_1

def globalBody831_47 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 12#64)) globalBody831_46 globalBody831_3

def globalBody831_48 : Prog (BitVec 64) :=
.seq globalBody831_44 globalBody831_47

def globalBody831_49 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_bls_g2_add" []

def globalBody831_50 : Prog (BitVec 64) :=
.seq globalBody831_49 globalBody831_1

def globalBody831_51 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 13#64)) globalBody831_50 globalBody831_3

def globalBody831_52 : Prog (BitVec 64) :=
.seq globalBody831_48 globalBody831_51

def globalBody831_53 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_bls_g2_msm" []

def globalBody831_54 : Prog (BitVec 64) :=
.seq globalBody831_53 globalBody831_1

def globalBody831_55 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 14#64)) globalBody831_54 globalBody831_3

def globalBody831_56 : Prog (BitVec 64) :=
.seq globalBody831_52 globalBody831_55

def globalBody831_57 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_bls_pairing" []

def globalBody831_58 : Prog (BitVec 64) :=
.seq globalBody831_57 globalBody831_1

def globalBody831_59 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 15#64)) globalBody831_58 globalBody831_3

def globalBody831_60 : Prog (BitVec 64) :=
.seq globalBody831_56 globalBody831_59

def globalBody831_61 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_bls_map_fp_to_g1" []

def globalBody831_62 : Prog (BitVec 64) :=
.seq globalBody831_61 globalBody831_1

def globalBody831_63 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 16#64)) globalBody831_62 globalBody831_3

def globalBody831_64 : Prog (BitVec 64) :=
.seq globalBody831_60 globalBody831_63

def globalBody831_65 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_bls_map_fp2_to_g2" []

def globalBody831_66 : Prog (BitVec 64) :=
.seq globalBody831_65 globalBody831_1

def globalBody831_67 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 17#64)) globalBody831_66 globalBody831_3

def globalBody831_68 : Prog (BitVec 64) :=
.seq globalBody831_64 globalBody831_67

def globalBody831_69 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pre_p256verify" []

def globalBody831_70 : Prog (BitVec 64) :=
.seq globalBody831_69 globalBody831_1

def globalBody831_71 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "idx") (Flapjack.Exp.const 18#64)) globalBody831_70 globalBody831_3

def globalBody831_72 : Prog (BitVec 64) :=
.seq globalBody831_68 globalBody831_71

def globalBody831_73 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 99#64)

def globalBody831_74 : Prog (BitVec 64) :=
.seq globalBody831_72 globalBody831_73

def globalBody831_75 : Prog (BitVec 64) :=
.seq globalBody831_74 globalBody831_1

def globalData831 : Decl (BitVec 64) :=
.function { name := "run_precompile", inline := false, exported := false, params := [("idx", Flapjack.Shape.one)], body := globalBody831_75, returnShape := (Flapjack.Shape.one) }
def globalOutput831 := Pancake.PanLang.declToHOL globalData831
end InitECandidate.Proofs.FrontendStages.Declarations
