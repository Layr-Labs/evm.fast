import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify341
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body357_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "trap_with" [Flapjack.Exp.const 4#64]

def body357_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body357_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.global "journal_n")
  (Flapjack.Exp.var Flapjack.VarKind.global "journal_cap")) body357_0 body357_1

def body357_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "kc", Flapjack.Exp.var Flapjack.VarKind.local "key",
    Flapjack.Exp.var Flapjack.VarKind.local "klen"]

def body357_4 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body357_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "kc")

def body357_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "old"))

def body357_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "old"))

def body357_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "journal_n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "journal_n", Flapjack.Exp.const 1#64])

def body357_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key",
    Flapjack.Exp.var Flapjack.VarKind.local "value"]

def body357_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body357_11 : Prog (BitVec 64) :=
.seq body357_9 body357_10

def body357_12 : Prog (BitVec 64) :=
.seq body357_8 body357_11

def body357_13 : Prog (BitVec 64) :=
.seq body357_7 body357_12

def body357_14 : Prog (BitVec 64) :=
.seq body357_6 body357_13

def body357_15 : Prog (BitVec 64) :=
.seq body357_5 body357_14

def body357_16 : Prog (BitVec 64) :=
.seq body357_4 body357_15

def body357_17 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.global "journal",
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.global "journal_n", Flapjack.Exp.const 32#64]]) body357_16

def body357_18 : Prog (BitVec 64) :=
.seq body357_3 body357_17

def body357_19 : Prog (BitVec 64) :=
.decCall ("kc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "klen"]) body357_18

def body357_20 : Prog (BitVec 64) :=
.dec ("klen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])) body357_19

def body357_21 : Prog (BitVec 64) :=
.seq body357_2 body357_20

def body357_22 : Prog (BitVec 64) :=
.decCall ("old") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body357_21

def body357_23 : Prog (BitVec 64) :=
.seq body357_4 body357_5

def body357_24 : Prog (BitVec 64) :=
.seq body357_23 body357_6

def body357_25 : Prog (BitVec 64) :=
.seq body357_24 body357_7

def body357_26 : Prog (BitVec 64) :=
.seq body357_25 body357_8

def body357_27 : Prog (BitVec 64) :=
.seq body357_26 body357_9

def body357_28 : Prog (BitVec 64) :=
.seq body357_27 body357_10

def body357_29 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.global "journal",
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.global "journal_n", Flapjack.Exp.const 32#64]]) body357_28

def body357_30 : Prog (BitVec 64) :=
.seq body357_3 body357_29

def body357_31 : Prog (BitVec 64) :=
.decCall ("kc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "klen"]) body357_30

def body357_32 : Prog (BitVec 64) :=
.dec ("klen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])) body357_31

def body357_33 : Prog (BitVec 64) :=
.seq body357_2 body357_32

def body357_34 : Prog (BitVec 64) :=
.decCall ("old") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body357_33

def originalData357 : Decl (BitVec 64) :=
.function { name := "jset", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("value", Flapjack.Shape.one)], body := body357_22, returnShape := (Flapjack.Shape.one) }
def simplifiedData357 : Decl (BitVec 64) :=
.function { name := "jset", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("value", Flapjack.Shape.one)], body := body357_34, returnShape := (Flapjack.Shape.one) }
def original357 := Pancake.PanLang.declToHOL originalData357
def simplified357 := Pancake.PanLang.declToHOL simplifiedData357
end InitECandidate.Proofs.FrontendStages.Declarations
