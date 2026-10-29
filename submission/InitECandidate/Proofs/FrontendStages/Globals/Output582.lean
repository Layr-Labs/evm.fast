import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data582
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate562
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody582_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (some (Flapjack.VarKind.local, "done"),
      some
        ("EvmErr", "err",
          Flapjack.Prog.call (some (none, none)) "frame_exception" [Flapjack.Exp.var Flapjack.VarKind.local "err"])))
  "frame_prologue" []

def globalBody582_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 1#64)

def globalBody582_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody582_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "done") (Flapjack.Exp.const 0#64)) globalBody582_1 globalBody582_2

def globalBody582_4 : Prog (BitVec 64) :=
.seq globalBody582_0 globalBody582_3

def globalBody582_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody582_6 : Prog (BitVec 64) :=
.seq globalBody582_4 globalBody582_5

def globalBody582_7 : Prog (BitVec 64) :=
.dec ("done") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody582_6

def globalBody582_8 : Prog (BitVec 64) :=
.dec ("err") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody582_7

def globalData582 : Decl (BitVec 64) :=
.function { name := "frame_start", inline := false, exported := false, params := [], body := globalBody582_8, returnShape := (Flapjack.Shape.one) }
def globalOutput582 := Pancake.PanLang.declToHOL globalData582
end InitECandidate.Proofs.FrontendStages.Declarations
