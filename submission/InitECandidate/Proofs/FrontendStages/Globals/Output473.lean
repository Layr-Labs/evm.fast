import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data473
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate457
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody473_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
          Flapjack.Exp.const 168#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 1#64]

def globalBody473_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody473_2 : Prog (BitVec 64) :=
.seq globalBody473_0 globalBody473_1

def globalData473 : Decl (BitVec 64) :=
.function { name := "warm_address", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody473_2, returnShape := (Flapjack.Shape.one) }
def globalOutput473 := Pancake.PanLang.declToHOL globalData473
end InitECandidate.Proofs.FrontendStages.Declarations
