import InitECandidate.Proofs.FrontendStages.Declarations.Data847
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody847_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "bls_fp_decode64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64]]

def globalBody847_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody847_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 1#64)) globalBody847_0 globalBody847_1

def globalBody847_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody847_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody847_5 : Prog (BitVec 64) :=
.seq globalBody847_3 globalBody847_4

def globalBody847_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) globalBody847_5 globalBody847_1

def globalBody847_7 : Prog (BitVec 64) :=
.seq globalBody847_2 globalBody847_6

def globalBody847_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "map_fp2_to_g2"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "t"]

def globalBody847_9 : Prog (BitVec 64) :=
.seq globalBody847_7 globalBody847_8

def globalBody847_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_encode"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody847_11 : Prog (BitVec 64) :=
.seq globalBody847_9 globalBody847_10

def globalBody847_12 : Prog (BitVec 64) :=
.seq globalBody847_11 globalBody847_3

def globalBody847_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody847_14 : Prog (BitVec 64) :=
.seq globalBody847_12 globalBody847_13

def globalBody847_15 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("bls_fp_decode64") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "t"]) globalBody847_14

def globalBody847_16 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) globalBody847_15

def globalBody847_17 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody847_16

def globalBody847_18 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody847_17

def globalData847 : Decl (BitVec 64) := .function { name := "bls_map_fp2_to_g2_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody847_18, returnShape := (Flapjack.Shape.one) }
def globalOutput847 := Pancake.PanLang.declToHOL globalData847
end InitECandidate.Proofs.FrontendStages.Declarations
