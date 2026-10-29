import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify810
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body826_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3000#64]

def body826_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64]),
    Flapjack.Exp.const 0#64, Flapjack.Exp.const 128#64, Flapjack.Exp.var Flapjack.VarKind.local "buf"]

def body826_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body826_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "empty")

def body826_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 0#64)

def body826_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body826_6 : Prog (BitVec 64) :=
.seq body826_4 body826_5

def body826_7 : Prog (BitVec 64) :=
.seq body826_3 body826_6

def body826_8 : Prog (BitVec 64) :=
.seq body826_2 body826_7

def body826_9 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body826_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "vfit") (Flapjack.Exp.const 0#64)) body826_8 body826_9

def body826_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body826_8 body826_9

def body826_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 12#64]

def body826_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body826_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 32#64)

def body826_15 : Prog (BitVec 64) :=
.seq body826_14 body826_5

def body826_16 : Prog (BitVec 64) :=
.seq body826_13 body826_15

def body826_17 : Prog (BitVec 64) :=
.seq body826_2 body826_16

def body826_18 : Prog (BitVec 64) :=
.seq body826_12 body826_17

def body826_19 : Prog (BitVec 64) :=
.seq body826_11 body826_18

def body826_20 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("secp256k1_ecrecover") ([Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v"),
  Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "s",
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 12#64]]) body826_19

def body826_21 : Prog (BitVec 64) :=
.seq body826_10 body826_20

def body826_22 : Prog (BitVec 64) :=
.decCall ("vfit") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "v"]) body826_21

def body826_23 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 96#64],
  Flapjack.Exp.const 32#64]) body826_22

def body826_24 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 64#64],
  Flapjack.Exp.const 32#64]) body826_23

def body826_25 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 32#64],
  Flapjack.Exp.const 32#64]) body826_24

def body826_26 : Prog (BitVec 64) :=
.seq body826_1 body826_25

def body826_27 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 128#64]) body826_26

def body826_28 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body826_27

def body826_29 : Prog (BitVec 64) :=
.decCall ("empty") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) body826_28

def body826_30 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body826_29

def body826_31 : Prog (BitVec 64) :=
.seq body826_0 body826_30

def body826_32 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body826_31

def body826_33 : Prog (BitVec 64) :=
.seq body826_2 body826_3

def body826_34 : Prog (BitVec 64) :=
.seq body826_33 body826_4

def body826_35 : Prog (BitVec 64) :=
.seq body826_34 body826_5

def body826_36 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "vfit") (Flapjack.Exp.const 0#64)) body826_35 body826_9

def body826_37 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body826_35 body826_9

def body826_38 : Prog (BitVec 64) :=
.seq body826_37 body826_12

def body826_39 : Prog (BitVec 64) :=
.seq body826_38 body826_2

def body826_40 : Prog (BitVec 64) :=
.seq body826_39 body826_13

def body826_41 : Prog (BitVec 64) :=
.seq body826_40 body826_14

def body826_42 : Prog (BitVec 64) :=
.seq body826_41 body826_5

def body826_43 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("secp256k1_ecrecover") ([Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v"),
  Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "s",
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 12#64]]) body826_42

def body826_44 : Prog (BitVec 64) :=
.seq body826_36 body826_43

def body826_45 : Prog (BitVec 64) :=
.decCall ("vfit") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "v"]) body826_44

def body826_46 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 96#64],
  Flapjack.Exp.const 32#64]) body826_45

def body826_47 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 64#64],
  Flapjack.Exp.const 32#64]) body826_46

def body826_48 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 32#64],
  Flapjack.Exp.const 32#64]) body826_47

def body826_49 : Prog (BitVec 64) :=
.seq body826_1 body826_48

def body826_50 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 128#64]) body826_49

def body826_51 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body826_50

def body826_52 : Prog (BitVec 64) :=
.decCall ("empty") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) body826_51

def body826_53 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body826_52

def body826_54 : Prog (BitVec 64) :=
.seq body826_0 body826_53

def body826_55 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body826_54

def originalData826 : Decl (BitVec 64) :=
.function { name := "pre_ecrecover", inline := false, exported := false, params := [], body := body826_32, returnShape := (Flapjack.Shape.one) }
def simplifiedData826 : Decl (BitVec 64) :=
.function { name := "pre_ecrecover", inline := false, exported := false, params := [], body := body826_55, returnShape := (Flapjack.Shape.one) }
def original826 := Pancake.PanLang.declToHOL originalData826
def simplified826 := Pancake.PanLang.declToHOL simplifiedData826
end InitECandidate.Proofs.FrontendStages.Declarations
