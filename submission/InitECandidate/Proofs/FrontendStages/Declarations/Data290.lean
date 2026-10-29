import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify274
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body290_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst") (Flapjack.Exp.const 128#64)

def body290_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body290_2 : Prog (BitVec 64) :=
.seq body290_0 body290_1

def body290_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body290_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "child") (Flapjack.Exp.const 0#64)) body290_2 body290_3

def body290_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst") (Flapjack.Exp.const 160#64)

def body290_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 1#64],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.const 32#64]

def body290_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 33#64)

def body290_8 : Prog (BitVec 64) :=
.seq body290_6 body290_7

def body290_9 : Prog (BitVec 64) :=
.seq body290_5 body290_8

def body290_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) body290_9 body290_3

def body290_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 13#64]

def body290_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.const 0#64)) body290_11 body290_3

def body290_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "rp",
    Flapjack.Exp.var Flapjack.VarKind.local "rl"]

def body290_14 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "rl")

def body290_15 : Prog (BitVec 64) :=
.seq body290_13 body290_14

def body290_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "rl") (Flapjack.Exp.const 32#64)) body290_15 body290_3

def body290_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 32#64]

def body290_18 : Prog (BitVec 64) :=
.seq body290_17 body290_7

def body290_19 : Prog (BitVec 64) :=
.seq body290_5 body290_18

def body290_20 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("node_hash_cached") ([Flapjack.Exp.var Flapjack.VarKind.local "child"]) body290_19

def body290_21 : Prog (BitVec 64) :=
.seq body290_16 body290_20

def body290_22 : Prog (BitVec 64) :=
.dec ("rl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 16#64])) body290_21

def body290_23 : Prog (BitVec 64) :=
.dec ("rp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 8#64])) body290_22

def body290_24 : Prog (BitVec 64) :=
.seq body290_12 body290_23

def body290_25 : Prog (BitVec 64) :=
.seq body290_10 body290_24

def body290_26 : Prog (BitVec 64) :=
.seq body290_4 body290_25

def body290_27 : Prog (BitVec 64) :=
.seq body290_5 body290_6

def body290_28 : Prog (BitVec 64) :=
.seq body290_27 body290_7

def body290_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) body290_28 body290_3

def body290_30 : Prog (BitVec 64) :=
.seq body290_4 body290_29

def body290_31 : Prog (BitVec 64) :=
.seq body290_30 body290_12

def body290_32 : Prog (BitVec 64) :=
.seq body290_5 body290_17

def body290_33 : Prog (BitVec 64) :=
.seq body290_32 body290_7

def body290_34 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("node_hash_cached") ([Flapjack.Exp.var Flapjack.VarKind.local "child"]) body290_33

def body290_35 : Prog (BitVec 64) :=
.seq body290_16 body290_34

def body290_36 : Prog (BitVec 64) :=
.dec ("rl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 16#64])) body290_35

def body290_37 : Prog (BitVec 64) :=
.dec ("rp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 8#64])) body290_36

def body290_38 : Prog (BitVec 64) :=
.seq body290_31 body290_37

def originalData290 : Decl (BitVec 64) :=
.function { name := "node_write_ref", inline := false, exported := false, params := [("child", Flapjack.Shape.one), ("dst", Flapjack.Shape.one)], body := body290_26, returnShape := (Flapjack.Shape.one) }
def simplifiedData290 : Decl (BitVec 64) :=
.function { name := "node_write_ref", inline := false, exported := false, params := [("child", Flapjack.Shape.one), ("dst", Flapjack.Shape.one)], body := body290_38, returnShape := (Flapjack.Shape.one) }
def original290 := Pancake.PanLang.declToHOL originalData290
def simplified290 := Pancake.PanLang.declToHOL simplifiedData290
end InitECandidate.Proofs.FrontendStages.Declarations
