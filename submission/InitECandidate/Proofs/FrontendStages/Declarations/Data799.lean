import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify783
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body799_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_set_inf" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body799_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body799_2 : Prog (BitVec 64) :=
.seq body799_0 body799_1

def body799_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body799_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 1#64)) body799_2 body799_3

def body799_5 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("is_zero_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "bs", Flapjack.Exp.const 1#64],
  Flapjack.Exp.const 47#64]) body799_4

def body799_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "bs"))
  (Flapjack.Exp.const 192#64)) body799_5 body799_3

def body799_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body799_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body799_7 body799_3

def body799_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "inf") (Flapjack.Exp.const 1#64)) body799_7 body799_3

def body799_10 : Prog (BitVec 64) :=
Flapjack.Prog.call none "g1_subgroup_check" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body799_11 : Prog (BitVec 64) :=
.seq body799_9 body799_10

def body799_12 : Prog (BitVec 64) :=
.decCall ("inf") (Flapjack.Shape.one) ("g1_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "r"]) body799_11

def body799_13 : Prog (BitVec 64) :=
.seq body799_8 body799_12

def body799_14 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("kzg_decompress_g1") ([Flapjack.Exp.var Flapjack.VarKind.local "bs", Flapjack.Exp.var Flapjack.VarKind.local "r"]) body799_13

def body799_15 : Prog (BitVec 64) :=
.seq body799_6 body799_14

def originalData799 : Decl (BitVec 64) :=
.function { name := "kzg_load_g1", inline := false, exported := false, params := [("bs", Flapjack.Shape.one), ("r", Flapjack.Shape.one)], body := body799_15, returnShape := (Flapjack.Shape.one) }
def simplifiedData799 : Decl (BitVec 64) :=
.function { name := "kzg_load_g1", inline := false, exported := false, params := [("bs", Flapjack.Shape.one), ("r", Flapjack.Shape.one)], body := body799_15, returnShape := (Flapjack.Shape.one) }
def original799 := Pancake.PanLang.declToHOL originalData799
def simplified799 := Pancake.PanLang.declToHOL simplifiedData799
end InitECandidate.Proofs.FrontendStages.Declarations
