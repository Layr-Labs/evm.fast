import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify386
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body402_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_union_into"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 24#64])]

def body402_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_union_into"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 8#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 8#64])]

def body402_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_union_into"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 40#64])]

def body402_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_union_into"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 16#64])]

def body402_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_union_into"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 48#64])]

def body402_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "binner"), none)) "htab_new"
  [Flapjack.Exp.const 32#64, Flapjack.Exp.const 8#64]

def body402_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "bouter",
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s"),
    Flapjack.Exp.var Flapjack.VarKind.local "binner"]

def body402_7 : Prog (BitVec 64) :=
.seq body402_5 body402_6

def body402_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "binner"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"))

def body402_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) body402_7 body402_8

def body402_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_union_into"
  [Flapjack.Exp.var Flapjack.VarKind.local "binner",
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "s")]

def body402_11 : Prog (BitVec 64) :=
.seq body402_9 body402_10

def body402_12 : Prog (BitVec 64) :=
.dec ("binner") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body402_11

def body402_13 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "bouter", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s")]) body402_12

def body402_14 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body402_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) body402_13 body402_14

def body402_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body402_17 : Prog (BitVec 64) :=
.seq body402_15 body402_16

def body402_18 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body402_17

def body402_19 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) body402_18

def body402_20 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body402_21 : Prog (BitVec 64) :=
.seq body402_19 body402_20

def body402_22 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body402_21

def body402_23 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.const 24#64])) body402_22

def body402_24 : Prog (BitVec 64) :=
.dec ("bouter") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 32#64])) body402_23

def body402_25 : Prog (BitVec 64) :=
.dec ("outer") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 32#64])) body402_24

def body402_26 : Prog (BitVec 64) :=
.seq body402_4 body402_25

def body402_27 : Prog (BitVec 64) :=
.seq body402_3 body402_26

def body402_28 : Prog (BitVec 64) :=
.seq body402_2 body402_27

def body402_29 : Prog (BitVec 64) :=
.seq body402_1 body402_28

def body402_30 : Prog (BitVec 64) :=
.seq body402_0 body402_29

def body402_31 : Prog (BitVec 64) :=
.seq body402_0 body402_1

def body402_32 : Prog (BitVec 64) :=
.seq body402_31 body402_2

def body402_33 : Prog (BitVec 64) :=
.seq body402_32 body402_3

def body402_34 : Prog (BitVec 64) :=
.seq body402_33 body402_4

def body402_35 : Prog (BitVec 64) :=
.seq body402_34 body402_25

def originalData402 : Decl (BitVec 64) :=
.function { name := "merge_tx_into_block", inline := false, exported := false, params := [], body := body402_30, returnShape := (Flapjack.Shape.one) }
def simplifiedData402 : Decl (BitVec 64) :=
.function { name := "merge_tx_into_block", inline := false, exported := false, params := [], body := body402_35, returnShape := (Flapjack.Shape.one) }
def original402 := Pancake.PanLang.declToHOL originalData402
def simplified402 := Pancake.PanLang.declToHOL simplifiedData402
end InitECandidate.Proofs.FrontendStages.Declarations
