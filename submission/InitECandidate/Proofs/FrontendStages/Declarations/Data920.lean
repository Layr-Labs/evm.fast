import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify904
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body920_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("HdrErr", "e",
          Flapjack.Prog.seq
            (Flapjack.Prog.shMemStore Flapjack.OpSize.op8
              (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 70#64])
              (Flapjack.Exp.var Flapjack.VarKind.local "e"))
            (Flapjack.Prog.raise "Fail" (Flapjack.Exp.const 2#64)))))
  "attempt_l1" [Flapjack.Exp.var Flapjack.VarKind.local "si"]

def body920_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body920_2 : Prog (BitVec 64) :=
.seq body920_0 body920_1

def body920_3 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body920_2

def originalData920 : Decl (BitVec 64) :=
.function { name := "attempt_l2", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body920_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData920 : Decl (BitVec 64) :=
.function { name := "attempt_l2", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body920_3, returnShape := (Flapjack.Shape.one) }
def original920 := Pancake.PanLang.declToHOL originalData920
def simplified920 := Pancake.PanLang.declToHOL simplifiedData920
end InitECandidate.Proofs.FrontendStages.Declarations
