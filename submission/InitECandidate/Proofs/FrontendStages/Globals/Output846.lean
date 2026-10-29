import InitECandidate.Proofs.FrontendStages.Declarations.Data846
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody846_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody846_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody846_2 : Prog (BitVec 64) :=
.seq globalBody846_0 globalBody846_1

def globalBody846_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody846_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) globalBody846_2 globalBody846_3

def globalBody846_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "map_fp_to_g1"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "tv"]

def globalBody846_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_encode"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody846_7 : Prog (BitVec 64) :=
.seq globalBody846_5 globalBody846_6

def globalBody846_8 : Prog (BitVec 64) :=
.seq globalBody846_7 globalBody846_0

def globalBody846_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody846_10 : Prog (BitVec 64) :=
.seq globalBody846_8 globalBody846_9

def globalBody846_11 : Prog (BitVec 64) :=
.dec ("tv") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")) globalBody846_10

def globalBody846_12 : Prog (BitVec 64) :=
.seq globalBody846_4 globalBody846_11

def globalBody846_13 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("bls_fp_decode64") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "t"]) globalBody846_12

def globalBody846_14 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) globalBody846_13

def globalBody846_15 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 48#64]) globalBody846_14

def globalBody846_16 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody846_15

def globalData846 : Decl (BitVec 64) := .function { name := "bls_map_fp_to_g1_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody846_16, returnShape := (Flapjack.Shape.one) }
def globalOutput846 := Pancake.PanLang.declToHOL globalData846
end InitECandidate.Proofs.FrontendStages.Declarations
