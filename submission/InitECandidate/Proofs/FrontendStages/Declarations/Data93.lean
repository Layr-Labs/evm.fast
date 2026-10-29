import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify77
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body93_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 1779033703#64)

def body93_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 3144134277#64)

def body93_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 1013904242#64)

def body93_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 2773480762#64)

def body93_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 1359893119#64)

def body93_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 2600822924#64)

def body93_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.const 528734635#64)

def body93_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 1541459225#64)

def body93_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body93_9 : Prog (BitVec 64) :=
.seq body93_7 body93_8

def body93_10 : Prog (BitVec 64) :=
.seq body93_6 body93_9

def body93_11 : Prog (BitVec 64) :=
.seq body93_5 body93_10

def body93_12 : Prog (BitVec 64) :=
.seq body93_4 body93_11

def body93_13 : Prog (BitVec 64) :=
.seq body93_3 body93_12

def body93_14 : Prog (BitVec 64) :=
.seq body93_2 body93_13

def body93_15 : Prog (BitVec 64) :=
.seq body93_1 body93_14

def body93_16 : Prog (BitVec 64) :=
.seq body93_0 body93_15

def body93_17 : Prog (BitVec 64) :=
.seq body93_0 body93_1

def body93_18 : Prog (BitVec 64) :=
.seq body93_17 body93_2

def body93_19 : Prog (BitVec 64) :=
.seq body93_18 body93_3

def body93_20 : Prog (BitVec 64) :=
.seq body93_19 body93_4

def body93_21 : Prog (BitVec 64) :=
.seq body93_20 body93_5

def body93_22 : Prog (BitVec 64) :=
.seq body93_21 body93_6

def body93_23 : Prog (BitVec 64) :=
.seq body93_22 body93_7

def body93_24 : Prog (BitVec 64) :=
.seq body93_23 body93_8

def originalData93 : Decl (BitVec 64) :=
.function { name := "sha256_state_init", inline := false, exported := false, params := [("stp", Flapjack.Shape.one)], body := body93_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData93 : Decl (BitVec 64) :=
.function { name := "sha256_state_init", inline := false, exported := false, params := [("stp", Flapjack.Shape.one)], body := body93_24, returnShape := (Flapjack.Shape.one) }
def original93 := Pancake.PanLang.declToHOL originalData93
def simplified93 := Pancake.PanLang.declToHOL simplifiedData93
end InitECandidate.Proofs.FrontendStages.Declarations
