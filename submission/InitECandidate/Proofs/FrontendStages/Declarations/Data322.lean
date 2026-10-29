import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify306
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body322_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "eh",
      Flapjack.Exp.var Flapjack.VarKind.local "entry"])

def body322_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body322_2 : Prog (BitVec 64) :=
.seq body322_0 body322_1

def body322_3 : Prog (BitVec 64) :=
.decCall ("eh") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "entry"]) body322_2

def body322_4 : Prog (BitVec 64) :=
.dec ("entry") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.const 21#64, Flapjack.Exp.var Flapjack.VarKind.local "ih",
    Flapjack.Exp.var Flapjack.VarKind.local "inner"]) body322_3

def body322_5 : Prog (BitVec 64) :=
.decCall ("ih") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "inner"]) body322_4

def body322_6 : Prog (BitVec 64) :=
.dec ("inner") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.const 33#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "recs",
          Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64],
          Flapjack.Exp.const 16#64])]) body322_5

def body322_7 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body322_6

def body322_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "total")

def body322_9 : Prog (BitVec 64) :=
.seq body322_7 body322_8

def body322_10 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body322_9

def body322_11 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body322_10

def originalData322 : Decl (BitVec 64) :=
.function { name := "access_list_payload_len", inline := false, exported := false, params := [("recs", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body322_11, returnShape := (Flapjack.Shape.one) }
def simplifiedData322 : Decl (BitVec 64) :=
.function { name := "access_list_payload_len", inline := false, exported := false, params := [("recs", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body322_11, returnShape := (Flapjack.Shape.one) }
def original322 := Pancake.PanLang.declToHOL originalData322
def simplified322 := Pancake.PanLang.declToHOL simplifiedData322
end InitECandidate.Proofs.FrontendStages.Declarations
