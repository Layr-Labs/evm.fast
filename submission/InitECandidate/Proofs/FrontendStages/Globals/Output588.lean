import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data588
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate572
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody588_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_delegation" []

def globalBody588_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 200#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "used")

def globalBody588_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
        Flapjack.Exp.const 72#64]))

def globalBody588_3 : Prog (BitVec 64) :=
.seq globalBody588_1 globalBody588_2

def globalBody588_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 192#64])
  (Flapjack.Exp.const 0#64)

def globalBody588_5 : Prog (BitVec 64) :=
.seq globalBody588_3 globalBody588_4

def globalBody588_6 : Prog (BitVec 64) :=
.decCall ("used") (Flapjack.Shape.one) ("frame_state_gas_used") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64])]) globalBody588_5

def globalBody588_7 : Prog (BitVec 64) :=
.seq globalBody588_0 globalBody588_6

def globalBody588_8 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody588_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 152#64]))
  (Flapjack.Exp.const 0#64)) globalBody588_7 globalBody588_8

def globalBody588_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "prepare_dispatch" []

def globalBody588_11 : Prog (BitVec 64) :=
.seq globalBody588_9 globalBody588_10

def globalBody588_12 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody588_13 : Prog (BitVec 64) :=
.seq globalBody588_11 globalBody588_12

def globalBody588_14 : Prog (BitVec 64) :=
.dec ("te") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 8#64])) globalBody588_13

def globalBody588_15 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 112#64])) globalBody588_14

def globalData588 : Decl (BitVec 64) :=
.function { name := "depth0_prepare", inline := false, exported := false, params := [], body := globalBody588_15, returnShape := (Flapjack.Shape.one) }
def globalOutput588 := Pancake.PanLang.declToHOL globalData588
end InitECandidate.Proofs.FrontendStages.Declarations
