import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify908
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body924_0 : Prog (BitVec 64) :=
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

def body924_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body924_2 : Prog (BitVec 64) :=
.seq body924_0 body924_1

def body924_3 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body924_2

def originalData924 : Decl (BitVec 64) :=
.function { name := "attempt_l6", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body924_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData924 : Decl (BitVec 64) :=
.function { name := "attempt_l6", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body924_3, returnShape := (Flapjack.Shape.one) }
def original924 := Pancake.PanLang.declToHOL originalData924
def simplified924 := Pancake.PanLang.declToHOL simplifiedData924
end InitECandidate.Proofs.FrontendStages.Declarations
