import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify792
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body808_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body808_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body808_2 : Prog (BitVec 64) :=
.seq body808_0 body808_1

def body808_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body808_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body808_2 body808_3

def body808_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "map_fp_to_g1"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "tv"]

def body808_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_encode"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body808_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body808_8 : Prog (BitVec 64) :=
.seq body808_0 body808_7

def body808_9 : Prog (BitVec 64) :=
.seq body808_6 body808_8

def body808_10 : Prog (BitVec 64) :=
.seq body808_5 body808_9

def body808_11 : Prog (BitVec 64) :=
.dec ("tv") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")) body808_10

def body808_12 : Prog (BitVec 64) :=
.seq body808_4 body808_11

def body808_13 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("bls_fp_decode64") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "t"]) body808_12

def body808_14 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body808_13

def body808_15 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 48#64]) body808_14

def body808_16 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body808_15

def body808_17 : Prog (BitVec 64) :=
.seq body808_5 body808_6

def body808_18 : Prog (BitVec 64) :=
.seq body808_17 body808_0

def body808_19 : Prog (BitVec 64) :=
.seq body808_18 body808_7

def body808_20 : Prog (BitVec 64) :=
.dec ("tv") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")) body808_19

def body808_21 : Prog (BitVec 64) :=
.seq body808_4 body808_20

def body808_22 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("bls_fp_decode64") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "t"]) body808_21

def body808_23 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body808_22

def body808_24 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 48#64]) body808_23

def body808_25 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body808_24

def originalData808 : Decl (BitVec 64) :=
.function { name := "bls_map_fp_to_g1_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body808_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData808 : Decl (BitVec 64) :=
.function { name := "bls_map_fp_to_g1_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body808_25, returnShape := (Flapjack.Shape.one) }
def original808 := Pancake.PanLang.declToHOL originalData808
def simplified808 := Pancake.PanLang.declToHOL simplifiedData808
end InitECandidate.Proofs.FrontendStages.Declarations
