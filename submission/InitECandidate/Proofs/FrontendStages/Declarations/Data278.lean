import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify262
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body278_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body278_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body278_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "nc") (Flapjack.Exp.const 0#64)) body278_0 body278_1

def body278_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nc")

def body278_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "node")

def body278_5 : Prog (BitVec 64) :=
.seq body278_3 body278_4

def body278_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ck") (Flapjack.Exp.const 3#64)) body278_5 body278_1

def body278_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 2#64]

def body278_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ck") (Flapjack.Exp.const 0#64)) body278_7 body278_1

def body278_9 : Prog (BitVec 64) :=
Flapjack.Prog.call none "node_new_ext"
  [Flapjack.Exp.var Flapjack.VarKind.local "cat", Flapjack.Exp.var Flapjack.VarKind.local "cl",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nc", Flapjack.Exp.const 48#64])]

def body278_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ck") (Flapjack.Exp.const 2#64)) body278_9 body278_1

def body278_11 : Prog (BitVec 64) :=
Flapjack.Prog.call none "node_new_leaf"
  [Flapjack.Exp.var Flapjack.VarKind.local "cat", Flapjack.Exp.var Flapjack.VarKind.local "cl",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nc", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nc", Flapjack.Exp.const 56#64])]

def body278_12 : Prog (BitVec 64) :=
.seq body278_10 body278_11

def body278_13 : Prog (BitVec 64) :=
.dec ("cl") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "sl",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nc", Flapjack.Exp.const 40#64])]) body278_12

def body278_14 : Prog (BitVec 64) :=
.decCall ("cat") (Flapjack.Shape.one) ("nibbles_concat") ([Flapjack.Exp.var Flapjack.VarKind.local "seg", Flapjack.Exp.var Flapjack.VarKind.local "sl",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nc", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nc", Flapjack.Exp.const 40#64])]) body278_13

def body278_15 : Prog (BitVec 64) :=
.seq body278_8 body278_14

def body278_16 : Prog (BitVec 64) :=
.seq body278_6 body278_15

def body278_17 : Prog (BitVec 64) :=
.dec ("ck") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nc", Flapjack.Exp.const 0#64])) body278_16

def body278_18 : Prog (BitVec 64) :=
.seq body278_2 body278_17

def body278_19 : Prog (BitVec 64) :=
.seq body278_6 body278_8

def body278_20 : Prog (BitVec 64) :=
.seq body278_19 body278_14

def body278_21 : Prog (BitVec 64) :=
.dec ("ck") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nc", Flapjack.Exp.const 0#64])) body278_20

def body278_22 : Prog (BitVec 64) :=
.seq body278_2 body278_21

def originalData278 : Decl (BitVec 64) :=
.function { name := "_delete_ext_finish", inline := false, exported := false, params := [("node", Flapjack.Shape.one), ("seg", Flapjack.Shape.one), ("sl", Flapjack.Shape.one), ("nc", Flapjack.Shape.one)], body := body278_18, returnShape := (Flapjack.Shape.one) }
def simplifiedData278 : Decl (BitVec 64) :=
.function { name := "_delete_ext_finish", inline := false, exported := false, params := [("node", Flapjack.Shape.one), ("seg", Flapjack.Shape.one), ("sl", Flapjack.Shape.one), ("nc", Flapjack.Shape.one)], body := body278_22, returnShape := (Flapjack.Shape.one) }
def original278 := Pancake.PanLang.declToHOL originalData278
def simplified278 := Pancake.PanLang.declToHOL simplifiedData278
end InitECandidate.Proofs.FrontendStages.Declarations
