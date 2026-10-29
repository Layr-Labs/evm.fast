import InitECandidate.Proofs.FrontendStages.Declarations.Data921
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody921_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("RlpErr", "e",
          Flapjack.Prog.seq
            (Flapjack.Prog.shMemStore Flapjack.OpSize.op8
              (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 70#64])
              (Flapjack.Exp.var Flapjack.VarKind.local "e"))
            (Flapjack.Prog.raise "Fail" (Flapjack.Exp.const 3#64)))))
  "attempt_l2" [Flapjack.Exp.var Flapjack.VarKind.local "si"]

def globalBody921_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody921_2 : Prog (BitVec 64) :=
.seq globalBody921_0 globalBody921_1

def globalBody921_3 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody921_2

def globalData921 : Decl (BitVec 64) := .function { name := "attempt_l3", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := globalBody921_3, returnShape := (Flapjack.Shape.one) }
def globalOutput921 := Pancake.PanLang.declToHOL globalData921
end InitECandidate.Proofs.FrontendStages.Declarations
