import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify865
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body881_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("BlockErr", "e",
          Flapjack.Prog.seq
            (Flapjack.Prog.shMemStore Flapjack.OpSize.op8
              (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 70#64])
              (Flapjack.Exp.var Flapjack.VarKind.local "e"))
            (Flapjack.Prog.raise "Fail" (Flapjack.Exp.const 1#64)))))
  "run_attempt" [Flapjack.Exp.var Flapjack.VarKind.local "si"]

def body881_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body881_2 : Prog (BitVec 64) :=
.seq body881_0 body881_1

def body881_3 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body881_2

def originalData881 : Decl (BitVec 64) :=
.function { name := "attempt_l1", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body881_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData881 : Decl (BitVec 64) :=
.function { name := "attempt_l1", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body881_3, returnShape := (Flapjack.Shape.one) }
def original881 := Pancake.PanLang.declToHOL originalData881
def simplified881 := Pancake.PanLang.declToHOL simplifiedData881
end InitECandidate.Proofs.FrontendStages.Declarations
