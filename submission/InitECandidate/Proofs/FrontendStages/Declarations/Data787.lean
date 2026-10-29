import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify771
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body787_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body787_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body787_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ip") (Flapjack.Exp.const 1#64)) body787_0 body787_1

def body787_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "iq") (Flapjack.Exp.const 1#64)) body787_0 body787_1

def body787_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_normalize"
  [Flapjack.Exp.var Flapjack.VarKind.local "pa", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def body787_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_normalize"
  [Flapjack.Exp.var Flapjack.VarKind.local "qa", Flapjack.Exp.var Flapjack.VarKind.local "q"]

def body787_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pair_miller_loop"
  [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "px",
    Flapjack.Exp.var Flapjack.VarKind.local "py", Flapjack.Exp.var Flapjack.VarKind.local "qa"]

def body787_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc",
    Flapjack.Exp.var Flapjack.VarKind.local "f"]

def body787_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body787_9 : Prog (BitVec 64) :=
.seq body787_8 body787_0

def body787_10 : Prog (BitVec 64) :=
.seq body787_7 body787_9

def body787_11 : Prog (BitVec 64) :=
.seq body787_6 body787_10

def body787_12 : Prog (BitVec 64) :=
.dec ("py") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pa", Flapjack.Exp.const 48#64])) body787_11

def body787_13 : Prog (BitVec 64) :=
.dec ("px") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pa")) body787_12

def body787_14 : Prog (BitVec 64) :=
.seq body787_5 body787_13

def body787_15 : Prog (BitVec 64) :=
.seq body787_4 body787_14

def body787_16 : Prog (BitVec 64) :=
.decCall ("f") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) body787_15

def body787_17 : Prog (BitVec 64) :=
.decCall ("qa") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 192#64]) body787_16

def body787_18 : Prog (BitVec 64) :=
.decCall ("pa") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body787_17

def body787_19 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body787_18

def body787_20 : Prog (BitVec 64) :=
.seq body787_3 body787_19

def body787_21 : Prog (BitVec 64) :=
.decCall ("iq") (Flapjack.Shape.one) ("g2_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "q"]) body787_20

def body787_22 : Prog (BitVec 64) :=
.seq body787_2 body787_21

def body787_23 : Prog (BitVec 64) :=
.decCall ("ip") (Flapjack.Shape.one) ("g1_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "p"]) body787_22

def body787_24 : Prog (BitVec 64) :=
.seq body787_4 body787_5

def body787_25 : Prog (BitVec 64) :=
.seq body787_6 body787_7

def body787_26 : Prog (BitVec 64) :=
.seq body787_25 body787_8

def body787_27 : Prog (BitVec 64) :=
.seq body787_26 body787_0

def body787_28 : Prog (BitVec 64) :=
.dec ("py") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pa", Flapjack.Exp.const 48#64])) body787_27

def body787_29 : Prog (BitVec 64) :=
.dec ("px") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pa")) body787_28

def body787_30 : Prog (BitVec 64) :=
.seq body787_24 body787_29

def body787_31 : Prog (BitVec 64) :=
.decCall ("f") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) body787_30

def body787_32 : Prog (BitVec 64) :=
.decCall ("qa") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 192#64]) body787_31

def body787_33 : Prog (BitVec 64) :=
.decCall ("pa") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body787_32

def body787_34 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body787_33

def body787_35 : Prog (BitVec 64) :=
.seq body787_3 body787_34

def body787_36 : Prog (BitVec 64) :=
.decCall ("iq") (Flapjack.Shape.one) ("g2_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "q"]) body787_35

def body787_37 : Prog (BitVec 64) :=
.seq body787_2 body787_36

def body787_38 : Prog (BitVec 64) :=
.decCall ("ip") (Flapjack.Shape.one) ("g1_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "p"]) body787_37

def originalData787 : Decl (BitVec 64) :=
.function { name := "pair_accumulate", inline := false, exported := false, params := [("acc", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("q", Flapjack.Shape.one)], body := body787_23, returnShape := (Flapjack.Shape.one) }
def simplifiedData787 : Decl (BitVec 64) :=
.function { name := "pair_accumulate", inline := false, exported := false, params := [("acc", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("q", Flapjack.Shape.one)], body := body787_38, returnShape := (Flapjack.Shape.one) }
def original787 := Pancake.PanLang.declToHOL originalData787
def simplified787 := Pancake.PanLang.declToHOL simplifiedData787
end InitECandidate.Proofs.FrontendStages.Declarations
