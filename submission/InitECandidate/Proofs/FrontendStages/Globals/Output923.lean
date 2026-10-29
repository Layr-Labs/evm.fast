import InitECandidate.Proofs.FrontendStages.Declarations.Data923
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody923_0 : Prog (BitVec 64) :=
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

def globalBody923_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody923_2 : Prog (BitVec 64) :=
.seq globalBody923_0 globalBody923_1

def globalBody923_3 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody923_2

def globalData923 : Decl (BitVec 64) := .function { name := "attempt_l5", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := globalBody923_3, returnShape := (Flapjack.Shape.one) }
def globalOutput923 := Pancake.PanLang.declToHOL globalData923
end InitECandidate.Proofs.FrontendStages.Declarations
