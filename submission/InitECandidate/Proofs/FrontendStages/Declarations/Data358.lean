import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify342
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body358_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body358_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body358_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "old"))
  (Flapjack.Exp.const 0#64)) body358_0 body358_1

def body358_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "trap_with" [Flapjack.Exp.const 5#64]

def body358_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.global "journal_n")
  (Flapjack.Exp.var Flapjack.VarKind.global "journal_cap")) body358_3 body358_1

def body358_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "kc", Flapjack.Exp.var Flapjack.VarKind.local "key",
    Flapjack.Exp.var Flapjack.VarKind.local "klen"]

def body358_6 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body358_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "kc")

def body358_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 1#64)

def body358_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "old"))

def body358_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "journal_n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "journal_n", Flapjack.Exp.const 1#64])

def body358_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_del"
  [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key"]

def body358_12 : Prog (BitVec 64) :=
.seq body358_11 body358_0

def body358_13 : Prog (BitVec 64) :=
.seq body358_10 body358_12

def body358_14 : Prog (BitVec 64) :=
.seq body358_9 body358_13

def body358_15 : Prog (BitVec 64) :=
.seq body358_8 body358_14

def body358_16 : Prog (BitVec 64) :=
.seq body358_7 body358_15

def body358_17 : Prog (BitVec 64) :=
.seq body358_6 body358_16

def body358_18 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.global "journal",
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.global "journal_n", Flapjack.Exp.const 32#64]]) body358_17

def body358_19 : Prog (BitVec 64) :=
.seq body358_5 body358_18

def body358_20 : Prog (BitVec 64) :=
.decCall ("kc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "klen"]) body358_19

def body358_21 : Prog (BitVec 64) :=
.dec ("klen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])) body358_20

def body358_22 : Prog (BitVec 64) :=
.seq body358_4 body358_21

def body358_23 : Prog (BitVec 64) :=
.seq body358_2 body358_22

def body358_24 : Prog (BitVec 64) :=
.decCall ("old") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body358_23

def body358_25 : Prog (BitVec 64) :=
.seq body358_2 body358_4

def body358_26 : Prog (BitVec 64) :=
.seq body358_6 body358_7

def body358_27 : Prog (BitVec 64) :=
.seq body358_26 body358_8

def body358_28 : Prog (BitVec 64) :=
.seq body358_27 body358_9

def body358_29 : Prog (BitVec 64) :=
.seq body358_28 body358_10

def body358_30 : Prog (BitVec 64) :=
.seq body358_29 body358_11

def body358_31 : Prog (BitVec 64) :=
.seq body358_30 body358_0

def body358_32 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.global "journal",
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.global "journal_n", Flapjack.Exp.const 32#64]]) body358_31

def body358_33 : Prog (BitVec 64) :=
.seq body358_5 body358_32

def body358_34 : Prog (BitVec 64) :=
.decCall ("kc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "klen"]) body358_33

def body358_35 : Prog (BitVec 64) :=
.dec ("klen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])) body358_34

def body358_36 : Prog (BitVec 64) :=
.seq body358_25 body358_35

def body358_37 : Prog (BitVec 64) :=
.decCall ("old") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body358_36

def originalData358 : Decl (BitVec 64) :=
.function { name := "jdel", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("key", Flapjack.Shape.one)], body := body358_24, returnShape := (Flapjack.Shape.one) }
def simplifiedData358 : Decl (BitVec 64) :=
.function { name := "jdel", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("key", Flapjack.Shape.one)], body := body358_37, returnShape := (Flapjack.Shape.one) }
def original358 := Pancake.PanLang.declToHOL originalData358
def simplified358 := Pancake.PanLang.declToHOL simplifiedData358
end InitECandidate.Proofs.FrontendStages.Declarations
