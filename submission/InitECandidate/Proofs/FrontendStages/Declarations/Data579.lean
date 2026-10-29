import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify563
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body579_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 104#64]

def body579_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "parent")

def body579_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "cur_cont")

def body579_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "kind")

def body579_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "msg")

def body579_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "ev" (Flapjack.Exp.var Flapjack.VarKind.local "child")

def body579_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "cur_cont" (Flapjack.Exp.var Flapjack.VarKind.local "rec")

def body579_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "child")

def body579_8 : Prog (BitVec 64) :=
.seq body579_6 body579_7

def body579_9 : Prog (BitVec 64) :=
.seq body579_5 body579_8

def body579_10 : Prog (BitVec 64) :=
.seq body579_4 body579_9

def body579_11 : Prog (BitVec 64) :=
.seq body579_3 body579_10

def body579_12 : Prog (BitVec 64) :=
.seq body579_2 body579_11

def body579_13 : Prog (BitVec 64) :=
.seq body579_1 body579_12

def body579_14 : Prog (BitVec 64) :=
.seq body579_0 body579_13

def body579_15 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 104#64]) body579_14

def body579_16 : Prog (BitVec 64) :=
.decCall ("child") (Flapjack.Shape.one) ("frame_new") ([Flapjack.Exp.var Flapjack.VarKind.local "msg"]) body579_15

def body579_17 : Prog (BitVec 64) :=
.dec ("parent") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "ev") body579_16

def body579_18 : Prog (BitVec 64) :=
.seq body579_0 body579_1

def body579_19 : Prog (BitVec 64) :=
.seq body579_18 body579_2

def body579_20 : Prog (BitVec 64) :=
.seq body579_19 body579_3

def body579_21 : Prog (BitVec 64) :=
.seq body579_20 body579_4

def body579_22 : Prog (BitVec 64) :=
.seq body579_21 body579_5

def body579_23 : Prog (BitVec 64) :=
.seq body579_22 body579_6

def body579_24 : Prog (BitVec 64) :=
.seq body579_23 body579_7

def body579_25 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 104#64]) body579_24

def body579_26 : Prog (BitVec 64) :=
.decCall ("child") (Flapjack.Shape.one) ("frame_new") ([Flapjack.Exp.var Flapjack.VarKind.local "msg"]) body579_25

def body579_27 : Prog (BitVec 64) :=
.dec ("parent") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "ev") body579_26

def originalData579 : Decl (BitVec 64) :=
.function { name := "frame_open", inline := false, exported := false, params := [("msg", Flapjack.Shape.one), ("kind", Flapjack.Shape.one)], body := body579_17, returnShape := (Flapjack.Shape.one) }
def simplifiedData579 : Decl (BitVec 64) :=
.function { name := "frame_open", inline := false, exported := false, params := [("msg", Flapjack.Shape.one), ("kind", Flapjack.Shape.one)], body := body579_27, returnShape := (Flapjack.Shape.one) }
def original579 := Pancake.PanLang.declToHOL originalData579
def simplified579 := Pancake.PanLang.declToHOL simplifiedData579
end InitECandidate.Proofs.FrontendStages.Declarations
