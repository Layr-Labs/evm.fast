import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data885
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate869
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody885_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("StateErr", "e",
          Flapjack.Prog.seq
            (Flapjack.Prog.shMemStore Flapjack.OpSize.op8
              (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 70#64])
              (Flapjack.Exp.var Flapjack.VarKind.local "e"))
            (Flapjack.Prog.raise "Fail" (Flapjack.Exp.const 5#64)))))
  "attempt_l4" [Flapjack.Exp.var Flapjack.VarKind.local "si"]

def globalBody885_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody885_2 : Prog (BitVec 64) :=
.seq globalBody885_0 globalBody885_1

def globalBody885_3 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody885_2

def globalData885 : Decl (BitVec 64) :=
.function { name := "attempt_l5", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := globalBody885_3, returnShape := (Flapjack.Shape.one) }
def globalOutput885 := Pancake.PanLang.declToHOL globalData885
end InitECandidate.Proofs.FrontendStages.Declarations
