import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data799
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate783
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody799_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_set_inf" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody799_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody799_2 : Prog (BitVec 64) :=
.seq globalBody799_0 globalBody799_1

def globalBody799_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody799_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 1#64)) globalBody799_2 globalBody799_3

def globalBody799_5 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("is_zero_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "bs", Flapjack.Exp.const 1#64],
  Flapjack.Exp.const 47#64]) globalBody799_4

def globalBody799_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "bs"))
  (Flapjack.Exp.const 192#64)) globalBody799_5 globalBody799_3

def globalBody799_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody799_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) globalBody799_7 globalBody799_3

def globalBody799_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "inf") (Flapjack.Exp.const 1#64)) globalBody799_7 globalBody799_3

def globalBody799_10 : Prog (BitVec 64) :=
Flapjack.Prog.call none "g1_subgroup_check" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody799_11 : Prog (BitVec 64) :=
.seq globalBody799_9 globalBody799_10

def globalBody799_12 : Prog (BitVec 64) :=
.decCall ("inf") (Flapjack.Shape.one) ("g1_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "r"]) globalBody799_11

def globalBody799_13 : Prog (BitVec 64) :=
.seq globalBody799_8 globalBody799_12

def globalBody799_14 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("kzg_decompress_g1") ([Flapjack.Exp.var Flapjack.VarKind.local "bs", Flapjack.Exp.var Flapjack.VarKind.local "r"]) globalBody799_13

def globalBody799_15 : Prog (BitVec 64) :=
.seq globalBody799_6 globalBody799_14

def globalData799 : Decl (BitVec 64) :=
.function { name := "kzg_load_g1", inline := false, exported := false, params := [("bs", Flapjack.Shape.one), ("r", Flapjack.Shape.one)], body := globalBody799_15, returnShape := (Flapjack.Shape.one) }
def globalOutput799 := Pancake.PanLang.declToHOL globalData799
end InitECandidate.Proofs.FrontendStages.Declarations
