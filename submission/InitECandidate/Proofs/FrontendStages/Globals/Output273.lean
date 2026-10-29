import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data273
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate257
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody273_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v1")

def globalBody273_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "vl1")

def globalBody273_2 : Prog (BitVec 64) :=
.seq globalBody273_0 globalBody273_1

def globalBody273_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 32#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "k1"), Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "lf1")

def globalBody273_4 : Prog (BitVec 64) :=
.decCall ("lf1") (Flapjack.Shape.one) ("node_new_leaf") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k1", Flapjack.Exp.const 1#64],
  Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "l1", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "v1", Flapjack.Exp.var Flapjack.VarKind.local "vl1"]) globalBody273_3

def globalBody273_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "l1") (Flapjack.Exp.const 0#64)) globalBody273_2 globalBody273_4

def globalBody273_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v2")

def globalBody273_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "vl2")

def globalBody273_8 : Prog (BitVec 64) :=
.seq globalBody273_6 globalBody273_7

def globalBody273_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 32#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "k2"), Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "lf2")

def globalBody273_10 : Prog (BitVec 64) :=
.decCall ("lf2") (Flapjack.Shape.one) ("node_new_leaf") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k2", Flapjack.Exp.const 1#64],
  Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "l2", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "v2", Flapjack.Exp.var Flapjack.VarKind.local "vl2"]) globalBody273_9

def globalBody273_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "l2") (Flapjack.Exp.const 0#64)) globalBody273_8 globalBody273_10

def globalBody273_12 : Prog (BitVec 64) :=
.seq globalBody273_5 globalBody273_11

def globalBody273_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "br")

def globalBody273_14 : Prog (BitVec 64) :=
.seq globalBody273_12 globalBody273_13

def globalBody273_15 : Prog (BitVec 64) :=
.decCall ("br") (Flapjack.Shape.one) ("node_new_branch") ([]) globalBody273_14

def globalData273 : Decl (BitVec 64) :=
.function { name := "_create_branch_from_two_leaves", inline := false, exported := false, params := [("k1", Flapjack.Shape.one), ("l1", Flapjack.Shape.one), ("v1", Flapjack.Shape.one), ("vl1", Flapjack.Shape.one),
  ("k2", Flapjack.Shape.one), ("l2", Flapjack.Shape.one), ("v2", Flapjack.Shape.one), ("vl2", Flapjack.Shape.one)], body := globalBody273_15, returnShape := (Flapjack.Shape.one) }
def globalOutput273 := Pancake.PanLang.declToHOL globalData273
end InitECandidate.Proofs.FrontendStages.Declarations
