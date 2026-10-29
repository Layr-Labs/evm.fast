import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify664
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body680_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 32#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "r0")

def body680_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 6#64],
          Flapjack.Exp.const 32#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body680_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def body680_3 : Prog (BitVec 64) :=
.seq body680_1 body680_2

def body680_4 : Prog (BitVec 64) :=
.seq body680_0 body680_3

def body680_5 : Prog (BitVec 64) :=
.decCall ("r0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "v9"]) body680_4

def body680_6 : Prog (BitVec 64) :=
.decCall ("v9") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul_small") ([Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.const 9#64]) body680_5

def body680_7 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_add") ([Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "t3"]) body680_6

def body680_8 : Prog (BitVec 64) :=
.decCall ("u") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.var Flapjack.VarKind.local "t1"]) body680_7

def body680_9 : Prog (BitVec 64) :=
.decCall ("t3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "d1", Flapjack.Exp.var Flapjack.VarKind.local "g0"]) body680_8

def body680_10 : Prog (BitVec 64) :=
.decCall ("t2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "d0", Flapjack.Exp.var Flapjack.VarKind.local "g1"]) body680_9

def body680_11 : Prog (BitVec 64) :=
.decCall ("t1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "d1", Flapjack.Exp.var Flapjack.VarKind.local "g1"]) body680_10

def body680_12 : Prog (BitVec 64) :=
.decCall ("t0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "d0", Flapjack.Exp.var Flapjack.VarKind.local "g0"]) body680_11

def body680_13 : Prog (BitVec 64) :=
.dec ("g1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 64#64],
      Flapjack.Exp.const 32#64])) body680_12

def body680_14 : Prog (BitVec 64) :=
.dec ("g0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 64#64]])) body680_13

def body680_15 : Prog (BitVec 64) :=
.decCall ("d1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_neg") ([Flapjack.Exp.var Flapjack.VarKind.local "ck6"]) body680_14

def body680_16 : Prog (BitVec 64) :=
.decCall ("d0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_add") ([Flapjack.Exp.var Flapjack.VarKind.local "ck", Flapjack.Exp.var Flapjack.VarKind.local "n9"]) body680_15

def body680_17 : Prog (BitVec 64) :=
.decCall ("n9") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul_small") ([Flapjack.Exp.var Flapjack.VarKind.local "ck6", Flapjack.Exp.const 9#64]) body680_16

def body680_18 : Prog (BitVec 64) :=
.dec ("ck6") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 6#64],
          Flapjack.Exp.const 32#64]])) body680_17

def body680_19 : Prog (BitVec 64) :=
.dec ("ck") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 32#64]])) body680_18

def body680_20 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 6#64)) body680_19

def body680_21 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body680_22 : Prog (BitVec 64) :=
.seq body680_20 body680_21

def body680_23 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body680_22

def body680_24 : Prog (BitVec 64) :=
.seq body680_0 body680_1

def body680_25 : Prog (BitVec 64) :=
.seq body680_24 body680_2

def body680_26 : Prog (BitVec 64) :=
.decCall ("r0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "v9"]) body680_25

def body680_27 : Prog (BitVec 64) :=
.decCall ("v9") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul_small") ([Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.const 9#64]) body680_26

def body680_28 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_add") ([Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "t3"]) body680_27

def body680_29 : Prog (BitVec 64) :=
.decCall ("u") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.var Flapjack.VarKind.local "t1"]) body680_28

def body680_30 : Prog (BitVec 64) :=
.decCall ("t3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "d1", Flapjack.Exp.var Flapjack.VarKind.local "g0"]) body680_29

def body680_31 : Prog (BitVec 64) :=
.decCall ("t2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "d0", Flapjack.Exp.var Flapjack.VarKind.local "g1"]) body680_30

def body680_32 : Prog (BitVec 64) :=
.decCall ("t1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "d1", Flapjack.Exp.var Flapjack.VarKind.local "g1"]) body680_31

def body680_33 : Prog (BitVec 64) :=
.decCall ("t0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "d0", Flapjack.Exp.var Flapjack.VarKind.local "g0"]) body680_32

def body680_34 : Prog (BitVec 64) :=
.dec ("g1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 64#64],
      Flapjack.Exp.const 32#64])) body680_33

def body680_35 : Prog (BitVec 64) :=
.dec ("g0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bn_gamma",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 64#64]])) body680_34

def body680_36 : Prog (BitVec 64) :=
.decCall ("d1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_neg") ([Flapjack.Exp.var Flapjack.VarKind.local "ck6"]) body680_35

def body680_37 : Prog (BitVec 64) :=
.decCall ("d0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_add") ([Flapjack.Exp.var Flapjack.VarKind.local "ck", Flapjack.Exp.var Flapjack.VarKind.local "n9"]) body680_36

def body680_38 : Prog (BitVec 64) :=
.decCall ("n9") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul_small") ([Flapjack.Exp.var Flapjack.VarKind.local "ck6", Flapjack.Exp.const 9#64]) body680_37

def body680_39 : Prog (BitVec 64) :=
.dec ("ck6") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 6#64],
          Flapjack.Exp.const 32#64]])) body680_38

def body680_40 : Prog (BitVec 64) :=
.dec ("ck") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 32#64]])) body680_39

def body680_41 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 6#64)) body680_40

def body680_42 : Prog (BitVec 64) :=
.seq body680_41 body680_21

def body680_43 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body680_42

def originalData680 : Decl (BitVec 64) :=
.function { name := "fq12_frob", inline := false, exported := false, params := [("d", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body680_23, returnShape := (Flapjack.Shape.one) }
def simplifiedData680 : Decl (BitVec 64) :=
.function { name := "fq12_frob", inline := false, exported := false, params := [("d", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body680_43, returnShape := (Flapjack.Shape.one) }
def original680 := Pancake.PanLang.declToHOL originalData680
def simplified680 := Pancake.PanLang.declToHOL simplifiedData680
end InitECandidate.Proofs.FrontendStages.Declarations
