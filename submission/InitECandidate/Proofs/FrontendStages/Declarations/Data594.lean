import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify578
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body594_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_truncate"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 168#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 264#64])]

def body594_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_truncate"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 176#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 272#64])]

def body594_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body594_3 : Prog (BitVec 64) :=
.seq body594_1 body594_2

def body594_4 : Prog (BitVec 64) :=
.seq body594_0 body594_3

def body594_5 : Prog (BitVec 64) :=
.seq body594_0 body594_1

def body594_6 : Prog (BitVec 64) :=
.seq body594_5 body594_2

def originalData594 : Decl (BitVec 64) :=
.function { name := "rollback_child_access", inline := false, exported := false, params := [("child", Flapjack.Shape.one)], body := body594_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData594 : Decl (BitVec 64) :=
.function { name := "rollback_child_access", inline := false, exported := false, params := [("child", Flapjack.Shape.one)], body := body594_6, returnShape := (Flapjack.Shape.one) }
def original594 := Pancake.PanLang.declToHOL originalData594
def simplified594 := Pancake.PanLang.declToHOL simplifiedData594
end InitECandidate.Proofs.FrontendStages.Declarations
