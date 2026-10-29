import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify656
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body672_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "pt"]

def body672_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.var Flapjack.VarKind.local "esz"]]

def body672_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_zero"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "pt",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]]

def body672_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body672_4 : Prog (BitVec 64) :=
.seq body672_2 body672_3

def body672_5 : Prog (BitVec 64) :=
.seq body672_1 body672_4

def body672_6 : Prog (BitVec 64) :=
.seq body672_0 body672_5

def body672_7 : Prog (BitVec 64) :=
.dec ("esz") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.const 32#64]) body672_6

def body672_8 : Prog (BitVec 64) :=
.seq body672_0 body672_1

def body672_9 : Prog (BitVec 64) :=
.seq body672_8 body672_2

def body672_10 : Prog (BitVec 64) :=
.seq body672_9 body672_3

def body672_11 : Prog (BitVec 64) :=
.dec ("esz") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.const 32#64]) body672_10

def originalData672 : Decl (BitVec 64) :=
.function { name := "ecp_set_inf", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("pt", Flapjack.Shape.one)], body := body672_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData672 : Decl (BitVec 64) :=
.function { name := "ecp_set_inf", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("pt", Flapjack.Shape.one)], body := body672_11, returnShape := (Flapjack.Shape.one) }
def original672 := Pancake.PanLang.declToHOL originalData672
def simplified672 := Pancake.PanLang.declToHOL simplifiedData672
end InitECandidate.Proofs.FrontendStages.Declarations
