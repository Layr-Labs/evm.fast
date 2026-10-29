import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data441
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate420
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody441_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 18446744073709551615#64)

def globalBody441_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody441_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "v"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "v"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "v")])
  (Flapjack.Exp.const 0#64)) globalBody441_0 globalBody441_1

def globalBody441_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v"))

def globalBody441_4 : Prog (BitVec 64) :=
.seq globalBody441_2 globalBody441_3

def globalData441 : Decl (BitVec 64) :=
.function { name := "sat_word", inline := false, exported := false, params := [("v", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody441_4, returnShape := (Flapjack.Shape.one) }
def globalOutput441 := Pancake.PanLang.declToHOL globalData441
end InitECandidate.Proofs.FrontendStages.Declarations
