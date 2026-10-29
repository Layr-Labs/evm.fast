import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data808
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate792
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody808_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody808_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody808_2 : Prog (BitVec 64) :=
.seq globalBody808_0 globalBody808_1

def globalBody808_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody808_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) globalBody808_2 globalBody808_3

def globalBody808_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "map_fp_to_g1"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "tv"]

def globalBody808_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_encode"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody808_7 : Prog (BitVec 64) :=
.seq globalBody808_5 globalBody808_6

def globalBody808_8 : Prog (BitVec 64) :=
.seq globalBody808_7 globalBody808_0

def globalBody808_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody808_10 : Prog (BitVec 64) :=
.seq globalBody808_8 globalBody808_9

def globalBody808_11 : Prog (BitVec 64) :=
.dec ("tv") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")) globalBody808_10

def globalBody808_12 : Prog (BitVec 64) :=
.seq globalBody808_4 globalBody808_11

def globalBody808_13 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("bls_fp_decode64") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "t"]) globalBody808_12

def globalBody808_14 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) globalBody808_13

def globalBody808_15 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 48#64]) globalBody808_14

def globalBody808_16 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody808_15

def globalData808 : Decl (BitVec 64) :=
.function { name := "bls_map_fp_to_g1_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody808_16, returnShape := (Flapjack.Shape.one) }
def globalOutput808 := Pancake.PanLang.declToHOL globalData808
end InitECandidate.Proofs.FrontendStages.Declarations
