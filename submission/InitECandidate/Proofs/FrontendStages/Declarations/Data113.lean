import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify97
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body113_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_validate_items"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p",
        Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "h")],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "h")]

def body113_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body113_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "h"))
  (Flapjack.Exp.const 0#64)) body113_0 body113_1

def body113_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "h"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "h")])

def body113_4 : Prog (BitVec 64) :=
.seq body113_2 body113_3

def body113_5 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item_header") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]) body113_4

def originalData113 : Decl (BitVec 64) :=
.function { name := "rlp_item_total", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body113_5, returnShape := (Flapjack.Shape.one) }
def simplifiedData113 : Decl (BitVec 64) :=
.function { name := "rlp_item_total", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body113_5, returnShape := (Flapjack.Shape.one) }
def original113 := Pancake.PanLang.declToHOL originalData113
def simplified113 := Pancake.PanLang.declToHOL simplifiedData113
end InitECandidate.Proofs.FrontendStages.Declarations
