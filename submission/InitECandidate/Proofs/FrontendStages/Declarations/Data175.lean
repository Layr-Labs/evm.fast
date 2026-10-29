import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify159
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body175_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_set_infinity" [Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body175_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body175_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body175_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 0#64)) body175_1 body175_2

def body175_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_set_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "sum", Flapjack.Exp.var Flapjack.VarKind.local "ax",
    Flapjack.Exp.var Flapjack.VarKind.local "ay"]

def body175_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_add_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "sum", Flapjack.Exp.var Flapjack.VarKind.local "bx",
    Flapjack.Exp.var Flapjack.VarKind.local "by"]

def body175_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_to_affine" [Flapjack.Exp.var Flapjack.VarKind.local "sum"]

def body175_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sum_inf") (Flapjack.Exp.const 0#64)) body175_6 body175_2

def body175_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body175_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_double" [Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body175_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_add_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "sx",
    Flapjack.Exp.var Flapjack.VarKind.local "sy"]

def body175_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sum_inf") (Flapjack.Exp.const 0#64)) body175_10 body175_2

def body175_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_add_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "ax",
    Flapjack.Exp.var Flapjack.VarKind.local "ay"]

def body175_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit2") (Flapjack.Exp.const 1#64)) body175_11 body175_12

def body175_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_add_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "bx",
    Flapjack.Exp.var Flapjack.VarKind.local "by"]

def body175_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit2") (Flapjack.Exp.const 1#64)) body175_14 body175_2

def body175_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit1") (Flapjack.Exp.const 1#64)) body175_13 body175_15

def body175_17 : Prog (BitVec 64) :=
.decCall ("bit2") (Flapjack.Shape.one) ("u256_bit") ([Flapjack.Exp.var Flapjack.VarKind.local "k2", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body175_16

def body175_18 : Prog (BitVec 64) :=
.decCall ("bit1") (Flapjack.Shape.one) ("u256_bit") ([Flapjack.Exp.var Flapjack.VarKind.local "k1", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body175_17

def body175_19 : Prog (BitVec 64) :=
.seq body175_9 body175_18

def body175_20 : Prog (BitVec 64) :=
.seq body175_8 body175_19

def body175_21 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body175_20

def body175_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body175_23 : Prog (BitVec 64) :=
.seq body175_22 body175_1

def body175_24 : Prog (BitVec 64) :=
.seq body175_21 body175_23

def body175_25 : Prog (BitVec 64) :=
.dec ("sy") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sum", Flapjack.Exp.const 32#64])) body175_24

def body175_26 : Prog (BitVec 64) :=
.dec ("sx") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "sum")) body175_25

def body175_27 : Prog (BitVec 64) :=
.seq body175_7 body175_26

def body175_28 : Prog (BitVec 64) :=
.decCall ("sum_inf") (Flapjack.Shape.one) ("ec_is_infinity") ([Flapjack.Exp.var Flapjack.VarKind.local "sum"]) body175_27

def body175_29 : Prog (BitVec 64) :=
.seq body175_5 body175_28

def body175_30 : Prog (BitVec 64) :=
.seq body175_4 body175_29

def body175_31 : Prog (BitVec 64) :=
.decCall ("sum") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body175_30

def body175_32 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body175_31

def body175_33 : Prog (BitVec 64) :=
.seq body175_3 body175_32

def body175_34 : Prog (BitVec 64) :=
.decCall ("i") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "len1", Flapjack.Exp.var Flapjack.VarKind.local "len2"]) body175_33

def body175_35 : Prog (BitVec 64) :=
.decCall ("len2") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "k2"]) body175_34

def body175_36 : Prog (BitVec 64) :=
.decCall ("len1") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "k1"]) body175_35

def body175_37 : Prog (BitVec 64) :=
.seq body175_0 body175_36

def body175_38 : Prog (BitVec 64) :=
.seq body175_4 body175_5

def body175_39 : Prog (BitVec 64) :=
.seq body175_8 body175_9

def body175_40 : Prog (BitVec 64) :=
.seq body175_39 body175_18

def body175_41 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body175_40

def body175_42 : Prog (BitVec 64) :=
.seq body175_41 body175_22

def body175_43 : Prog (BitVec 64) :=
.seq body175_42 body175_1

def body175_44 : Prog (BitVec 64) :=
.dec ("sy") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sum", Flapjack.Exp.const 32#64])) body175_43

def body175_45 : Prog (BitVec 64) :=
.dec ("sx") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "sum")) body175_44

def body175_46 : Prog (BitVec 64) :=
.seq body175_7 body175_45

def body175_47 : Prog (BitVec 64) :=
.decCall ("sum_inf") (Flapjack.Shape.one) ("ec_is_infinity") ([Flapjack.Exp.var Flapjack.VarKind.local "sum"]) body175_46

def body175_48 : Prog (BitVec 64) :=
.seq body175_38 body175_47

def body175_49 : Prog (BitVec 64) :=
.decCall ("sum") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body175_48

def body175_50 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body175_49

def body175_51 : Prog (BitVec 64) :=
.seq body175_3 body175_50

def body175_52 : Prog (BitVec 64) :=
.decCall ("i") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "len1", Flapjack.Exp.var Flapjack.VarKind.local "len2"]) body175_51

def body175_53 : Prog (BitVec 64) :=
.decCall ("len2") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "k2"]) body175_52

def body175_54 : Prog (BitVec 64) :=
.decCall ("len1") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "k1"]) body175_53

def body175_55 : Prog (BitVec 64) :=
.seq body175_0 body175_54

def originalData175 : Decl (BitVec 64) :=
.function { name := "ec_mul2", inline := false, exported := false, params := [("out", Flapjack.Shape.one),
  ("k1", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ax", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ay", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("k2", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("bx", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("by", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body175_37, returnShape := (Flapjack.Shape.one) }
def simplifiedData175 : Decl (BitVec 64) :=
.function { name := "ec_mul2", inline := false, exported := false, params := [("out", Flapjack.Shape.one),
  ("k1", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ax", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ay", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("k2", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("bx", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("by", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body175_55, returnShape := (Flapjack.Shape.one) }
def original175 := Pancake.PanLang.declToHOL originalData175
def simplified175 := Pancake.PanLang.declToHOL simplifiedData175
end InitECandidate.Proofs.FrontendStages.Declarations
