import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify257
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body273_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v1")

def body273_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "vl1")

def body273_2 : Prog (BitVec 64) :=
.seq body273_0 body273_1

def body273_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 32#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "k1"), Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "lf1")

def body273_4 : Prog (BitVec 64) :=
.decCall ("lf1") (Flapjack.Shape.one) ("node_new_leaf") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k1", Flapjack.Exp.const 1#64],
  Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "l1", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "v1", Flapjack.Exp.var Flapjack.VarKind.local "vl1"]) body273_3

def body273_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "l1") (Flapjack.Exp.const 0#64)) body273_2 body273_4

def body273_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v2")

def body273_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "vl2")

def body273_8 : Prog (BitVec 64) :=
.seq body273_6 body273_7

def body273_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 32#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "k2"), Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "lf2")

def body273_10 : Prog (BitVec 64) :=
.decCall ("lf2") (Flapjack.Shape.one) ("node_new_leaf") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k2", Flapjack.Exp.const 1#64],
  Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "v2", Flapjack.Exp.var Flapjack.VarKind.local "vl2"]) body273_9

def body273_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "l2") (Flapjack.Exp.const 0#64)) body273_8 body273_10

def body273_12 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "br")

def body273_13 : Prog (BitVec 64) :=
.seq body273_11 body273_12

def body273_14 : Prog (BitVec 64) :=
.seq body273_5 body273_13

def body273_15 : Prog (BitVec 64) :=
.decCall ("br") (Flapjack.Shape.one) ("node_new_branch") ([]) body273_14

def body273_16 : Prog (BitVec 64) :=
.seq body273_5 body273_11

def body273_17 : Prog (BitVec 64) :=
.seq body273_16 body273_12

def body273_18 : Prog (BitVec 64) :=
.decCall ("br") (Flapjack.Shape.one) ("node_new_branch") ([]) body273_17

def originalData273 : Decl (BitVec 64) :=
.function { name := "_create_branch_from_two_leaves", inline := false, exported := false, params := [("k1", Flapjack.Shape.one), ("l1", Flapjack.Shape.one), ("v1", Flapjack.Shape.one), ("vl1", Flapjack.Shape.one),
  ("k2", Flapjack.Shape.one), ("l2", Flapjack.Shape.one), ("v2", Flapjack.Shape.one), ("vl2", Flapjack.Shape.one)], body := body273_15, returnShape := (Flapjack.Shape.one) }
def simplifiedData273 : Decl (BitVec 64) :=
.function { name := "_create_branch_from_two_leaves", inline := false, exported := false, params := [("k1", Flapjack.Shape.one), ("l1", Flapjack.Shape.one), ("v1", Flapjack.Shape.one), ("vl1", Flapjack.Shape.one),
  ("k2", Flapjack.Shape.one), ("l2", Flapjack.Shape.one), ("v2", Flapjack.Shape.one), ("vl2", Flapjack.Shape.one)], body := body273_18, returnShape := (Flapjack.Shape.one) }
def original273 := Pancake.PanLang.declToHOL originalData273
def simplified273 := Pancake.PanLang.declToHOL simplifiedData273
end InitECandidate.Proofs.FrontendStages.Declarations
