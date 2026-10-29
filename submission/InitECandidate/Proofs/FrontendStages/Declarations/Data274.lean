import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify258
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body274_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "vptr")

def body274_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "vlen")

def body274_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "node")

def body274_3 : Prog (BitVec 64) :=
.seq body274_1 body274_2

def body274_4 : Prog (BitVec 64) :=
.seq body274_0 body274_3

def body274_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body274_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body274_4 body274_5

def body274_7 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "ek", Flapjack.Exp.var Flapjack.VarKind.local "rk",
  Flapjack.Exp.var Flapjack.VarKind.local "el"]) body274_6

def body274_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "el")
  (Flapjack.Exp.var Flapjack.VarKind.local "rl")) body274_7 body274_5

def body274_9 : Prog (BitVec 64) :=
Flapjack.Prog.call none "node_new_ext"
  [Flapjack.Exp.var Flapjack.VarKind.local "ek", Flapjack.Exp.var Flapjack.VarKind.local "pl",
    Flapjack.Exp.var Flapjack.VarKind.local "br"]

def body274_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "pl")) body274_9 body274_5

def body274_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "br")

def body274_12 : Prog (BitVec 64) :=
.seq body274_10 body274_11

def body274_13 : Prog (BitVec 64) :=
.decCall ("br") (Flapjack.Shape.one) ("_create_branch_from_two_leaves") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "ek", Flapjack.Exp.var Flapjack.VarKind.local "pl"],
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "el", Flapjack.Exp.var Flapjack.VarKind.local "pl"],
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 56#64]),
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rk", Flapjack.Exp.var Flapjack.VarKind.local "pl"],
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "rl", Flapjack.Exp.var Flapjack.VarKind.local "pl"],
  Flapjack.Exp.var Flapjack.VarKind.local "vptr", Flapjack.Exp.var Flapjack.VarKind.local "vlen"]) body274_12

def body274_14 : Prog (BitVec 64) :=
.decCall ("pl") (Flapjack.Shape.one) ("common_prefix_length") ([Flapjack.Exp.var Flapjack.VarKind.local "ek", Flapjack.Exp.var Flapjack.VarKind.local "el",
  Flapjack.Exp.var Flapjack.VarKind.local "rk", Flapjack.Exp.var Flapjack.VarKind.local "rl"]) body274_13

def body274_15 : Prog (BitVec 64) :=
.seq body274_8 body274_14

def body274_16 : Prog (BitVec 64) :=
.dec ("el") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64])) body274_15

def body274_17 : Prog (BitVec 64) :=
.dec ("ek") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64])) body274_16

def body274_18 : Prog (BitVec 64) :=
.seq body274_0 body274_1

def body274_19 : Prog (BitVec 64) :=
.seq body274_18 body274_2

def body274_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body274_19 body274_5

def body274_21 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "ek", Flapjack.Exp.var Flapjack.VarKind.local "rk",
  Flapjack.Exp.var Flapjack.VarKind.local "el"]) body274_20

def body274_22 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "el")
  (Flapjack.Exp.var Flapjack.VarKind.local "rl")) body274_21 body274_5

def body274_23 : Prog (BitVec 64) :=
.seq body274_22 body274_14

def body274_24 : Prog (BitVec 64) :=
.dec ("el") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64])) body274_23

def body274_25 : Prog (BitVec 64) :=
.dec ("ek") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64])) body274_24

def originalData274 : Decl (BitVec 64) :=
.function { name := "_insert_into_leaf", inline := false, exported := false, params := [("node", Flapjack.Shape.one), ("rk", Flapjack.Shape.one), ("rl", Flapjack.Shape.one), ("vptr", Flapjack.Shape.one),
  ("vlen", Flapjack.Shape.one)], body := body274_17, returnShape := (Flapjack.Shape.one) }
def simplifiedData274 : Decl (BitVec 64) :=
.function { name := "_insert_into_leaf", inline := false, exported := false, params := [("node", Flapjack.Shape.one), ("rk", Flapjack.Shape.one), ("rl", Flapjack.Shape.one), ("vptr", Flapjack.Shape.one),
  ("vlen", Flapjack.Shape.one)], body := body274_25, returnShape := (Flapjack.Shape.one) }
def original274 := Pancake.PanLang.declToHOL originalData274
def simplified274 := Pancake.PanLang.declToHOL simplifiedData274
end InitECandidate.Proofs.FrontendStages.Declarations
