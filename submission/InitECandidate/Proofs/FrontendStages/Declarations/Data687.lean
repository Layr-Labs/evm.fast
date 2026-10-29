import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify671
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body687_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body687_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body687_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "xl") (Flapjack.Exp.const 0#64)) body687_0 body687_1

def body687_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "yl") (Flapjack.Exp.const 0#64)) body687_0 body687_1

def body687_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_set_inf"
  [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body687_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body687_6 : Prog (BitVec 64) :=
.seq body687_4 body687_5

def body687_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.var Flapjack.VarKind.local "xz", Flapjack.Exp.var Flapjack.VarKind.local "yz"])
  (Flapjack.Exp.const 1#64)) body687_6 body687_1

def body687_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x"), none)) "fq_to_mont"
  [Flapjack.Exp.var Flapjack.VarKind.local "x"]

def body687_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y"), none)) "fq_to_mont"
  [Flapjack.Exp.var Flapjack.VarKind.local "y"]

def body687_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "fq_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def body687_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "fq_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 8797723225643362519#64, Flapjack.Exp.const 2263834496217719225#64,
        Flapjack.Exp.const 3696305541684646532#64, Flapjack.Exp.const 3035258219084094862#64]]

def body687_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body687_0 body687_1

def body687_13 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out") (Flapjack.Exp.var Flapjack.VarKind.local "x")

def body687_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "y")

def body687_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 15230403791020821917#64, Flapjack.Exp.const 754611498739239741#64,
      Flapjack.Exp.const 7381016538464732716#64, Flapjack.Exp.const 1011752739694698287#64])

def body687_16 : Prog (BitVec 64) :=
.seq body687_15 body687_5

def body687_17 : Prog (BitVec 64) :=
.seq body687_14 body687_16

def body687_18 : Prog (BitVec 64) :=
.seq body687_13 body687_17

def body687_19 : Prog (BitVec 64) :=
.seq body687_12 body687_18

def body687_20 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.var Flapjack.VarKind.local "r"]) body687_19

def body687_21 : Prog (BitVec 64) :=
.seq body687_11 body687_20

def body687_22 : Prog (BitVec 64) :=
.seq body687_10 body687_21

def body687_23 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "x"]) body687_22

def body687_24 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "y"]) body687_23

def body687_25 : Prog (BitVec 64) :=
.seq body687_9 body687_24

def body687_26 : Prog (BitVec 64) :=
.seq body687_8 body687_25

def body687_27 : Prog (BitVec 64) :=
.seq body687_7 body687_26

def body687_28 : Prog (BitVec 64) :=
.decCall ("yz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) body687_27

def body687_29 : Prog (BitVec 64) :=
.decCall ("xz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) body687_28

def body687_30 : Prog (BitVec 64) :=
.seq body687_3 body687_29

def body687_31 : Prog (BitVec 64) :=
.decCall ("yl") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "y",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) body687_30

def body687_32 : Prog (BitVec 64) :=
.seq body687_2 body687_31

def body687_33 : Prog (BitVec 64) :=
.decCall ("xl") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "x",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) body687_32

def body687_34 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64],
  Flapjack.Exp.const 32#64]) body687_33

def body687_35 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64]) body687_34

def body687_36 : Prog (BitVec 64) :=
.seq body687_7 body687_8

def body687_37 : Prog (BitVec 64) :=
.seq body687_36 body687_9

def body687_38 : Prog (BitVec 64) :=
.seq body687_10 body687_11

def body687_39 : Prog (BitVec 64) :=
.seq body687_12 body687_13

def body687_40 : Prog (BitVec 64) :=
.seq body687_39 body687_14

def body687_41 : Prog (BitVec 64) :=
.seq body687_40 body687_15

def body687_42 : Prog (BitVec 64) :=
.seq body687_41 body687_5

def body687_43 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.var Flapjack.VarKind.local "r"]) body687_42

def body687_44 : Prog (BitVec 64) :=
.seq body687_38 body687_43

def body687_45 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "x"]) body687_44

def body687_46 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "y"]) body687_45

def body687_47 : Prog (BitVec 64) :=
.seq body687_37 body687_46

def body687_48 : Prog (BitVec 64) :=
.decCall ("yz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) body687_47

def body687_49 : Prog (BitVec 64) :=
.decCall ("xz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) body687_48

def body687_50 : Prog (BitVec 64) :=
.seq body687_3 body687_49

def body687_51 : Prog (BitVec 64) :=
.decCall ("yl") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "y",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) body687_50

def body687_52 : Prog (BitVec 64) :=
.seq body687_2 body687_51

def body687_53 : Prog (BitVec 64) :=
.decCall ("xl") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "x",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) body687_52

def body687_54 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64],
  Flapjack.Exp.const 32#64]) body687_53

def body687_55 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64]) body687_54

def originalData687 : Decl (BitVec 64) :=
.function { name := "bn254_parse_g1", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body687_35, returnShape := (Flapjack.Shape.one) }
def simplifiedData687 : Decl (BitVec 64) :=
.function { name := "bn254_parse_g1", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body687_55, returnShape := (Flapjack.Shape.one) }
def original687 := Pancake.PanLang.declToHOL originalData687
def simplified687 := Pancake.PanLang.declToHOL simplifiedData687
end InitECandidate.Proofs.FrontendStages.Declarations
