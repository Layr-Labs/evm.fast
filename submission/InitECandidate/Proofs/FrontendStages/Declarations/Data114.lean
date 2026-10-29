import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify98
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body114_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "total"])

def body114_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "count"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "count", Flapjack.Exp.const 1#64])

def body114_2 : Prog (BitVec 64) :=
.seq body114_0 body114_1

def body114_3 : Prog (BitVec 64) :=
.decCall ("total") (Flapjack.Shape.one) ("rlp_item_total") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.var Flapjack.VarKind.local "off"]]) body114_2

def body114_4 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "off")
  (Flapjack.Exp.var Flapjack.VarKind.local "len")) body114_3

def body114_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "count")

def body114_6 : Prog (BitVec 64) :=
.seq body114_4 body114_5

def body114_7 : Prog (BitVec 64) :=
.dec ("off") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body114_6

def body114_8 : Prog (BitVec 64) :=
.dec ("count") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body114_7

def originalData114 : Decl (BitVec 64) :=
.function { name := "rlp_list_count", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body114_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData114 : Decl (BitVec 64) :=
.function { name := "rlp_list_count", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body114_8, returnShape := (Flapjack.Shape.one) }
def original114 := Pancake.PanLang.declToHOL originalData114
def simplified114 := Pancake.PanLang.declToHOL simplifiedData114
end InitECandidate.Proofs.FrontendStages.Declarations
