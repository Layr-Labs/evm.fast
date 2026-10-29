import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data579
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate559
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody579_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 104#64]

def globalBody579_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "parent")

def globalBody579_2 : Prog (BitVec 64) :=
.seq globalBody579_0 globalBody579_1

def globalBody579_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64]))

def globalBody579_4 : Prog (BitVec 64) :=
.seq globalBody579_2 globalBody579_3

def globalBody579_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "kind")

def globalBody579_6 : Prog (BitVec 64) :=
.seq globalBody579_4 globalBody579_5

def globalBody579_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "msg")

def globalBody579_8 : Prog (BitVec 64) :=
.seq globalBody579_6 globalBody579_7

def globalBody579_9 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "child")

def globalBody579_10 : Prog (BitVec 64) :=
.seq globalBody579_8 globalBody579_9

def globalBody579_11 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "rec")

def globalBody579_12 : Prog (BitVec 64) :=
.seq globalBody579_10 globalBody579_11

def globalBody579_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "child")

def globalBody579_14 : Prog (BitVec 64) :=
.seq globalBody579_12 globalBody579_13

def globalBody579_15 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 104#64]) globalBody579_14

def globalBody579_16 : Prog (BitVec 64) :=
.decCall ("child") (Flapjack.Shape.one) ("frame_new") ([Flapjack.Exp.var Flapjack.VarKind.local "msg"]) globalBody579_15

def globalBody579_17 : Prog (BitVec 64) :=
.dec ("parent") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64])) globalBody579_16

def globalData579 : Decl (BitVec 64) :=
.function { name := "frame_open", inline := false, exported := false, params := [("msg", Flapjack.Shape.one), ("kind", Flapjack.Shape.one)], body := globalBody579_17, returnShape := (Flapjack.Shape.one) }
def globalOutput579 := Pancake.PanLang.declToHOL globalData579
end InitECandidate.Proofs.FrontendStages.Declarations
