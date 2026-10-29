import InitECandidate.Proofs.FrontendStages.Declarations.Data924
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody924_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("TxErr", "e",
          Flapjack.Prog.seq
            (Flapjack.Prog.shMemStore Flapjack.OpSize.op8
              (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 70#64])
              (Flapjack.Exp.var Flapjack.VarKind.local "e"))
            (Flapjack.Prog.raise "Fail" (Flapjack.Exp.const 6#64)))))
  "attempt_l5" [Flapjack.Exp.var Flapjack.VarKind.local "si"]

def globalBody924_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody924_2 : Prog (BitVec 64) :=
.seq globalBody924_0 globalBody924_1

def globalBody924_3 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody924_2

def globalData924 : Decl (BitVec 64) := .function { name := "attempt_l6", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := globalBody924_3, returnShape := (Flapjack.Shape.one) }
def globalOutput924 := Pancake.PanLang.declToHOL globalData924
end InitECandidate.Proofs.FrontendStages.Declarations
