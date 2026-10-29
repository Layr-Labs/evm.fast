import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data93
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate75
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody93_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 1779033703#64)

def globalBody93_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 3144134277#64)

def globalBody93_2 : Prog (BitVec 64) :=
.seq globalBody93_0 globalBody93_1

def globalBody93_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 1013904242#64)

def globalBody93_4 : Prog (BitVec 64) :=
.seq globalBody93_2 globalBody93_3

def globalBody93_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 2773480762#64)

def globalBody93_6 : Prog (BitVec 64) :=
.seq globalBody93_4 globalBody93_5

def globalBody93_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 1359893119#64)

def globalBody93_8 : Prog (BitVec 64) :=
.seq globalBody93_6 globalBody93_7

def globalBody93_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 2600822924#64)

def globalBody93_10 : Prog (BitVec 64) :=
.seq globalBody93_8 globalBody93_9

def globalBody93_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.const 528734635#64)

def globalBody93_12 : Prog (BitVec 64) :=
.seq globalBody93_10 globalBody93_11

def globalBody93_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 1541459225#64)

def globalBody93_14 : Prog (BitVec 64) :=
.seq globalBody93_12 globalBody93_13

def globalBody93_15 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody93_16 : Prog (BitVec 64) :=
.seq globalBody93_14 globalBody93_15

def globalData93 : Decl (BitVec 64) :=
.function { name := "sha256_state_init", inline := false, exported := false, params := [("stp", Flapjack.Shape.one)], body := globalBody93_16, returnShape := (Flapjack.Shape.one) }
def globalOutput93 := Pancake.PanLang.declToHOL globalData93
end InitECandidate.Proofs.FrontendStages.Declarations
