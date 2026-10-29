import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data803
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate787
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody803_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "g1_decode"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 128#64],
    Flapjack.Exp.var Flapjack.VarKind.local "p2"]

def globalBody803_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody803_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 1#64)) globalBody803_0 globalBody803_1

def globalBody803_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody803_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody803_5 : Prog (BitVec 64) :=
.seq globalBody803_3 globalBody803_4

def globalBody803_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) globalBody803_5 globalBody803_1

def globalBody803_7 : Prog (BitVec 64) :=
.seq globalBody803_2 globalBody803_6

def globalBody803_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.var Flapjack.VarKind.local "p1",
    Flapjack.Exp.var Flapjack.VarKind.local "p2"]

def globalBody803_9 : Prog (BitVec 64) :=
.seq globalBody803_7 globalBody803_8

def globalBody803_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_encode"
  [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody803_11 : Prog (BitVec 64) :=
.seq globalBody803_9 globalBody803_10

def globalBody803_12 : Prog (BitVec 64) :=
.seq globalBody803_11 globalBody803_3

def globalBody803_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody803_14 : Prog (BitVec 64) :=
.seq globalBody803_12 globalBody803_13

def globalBody803_15 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("g1_decode") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "p1"]) globalBody803_14

def globalBody803_16 : Prog (BitVec 64) :=
.decCall ("p2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) globalBody803_15

def globalBody803_17 : Prog (BitVec 64) :=
.decCall ("p1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) globalBody803_16

def globalBody803_18 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody803_17

def globalData803 : Decl (BitVec 64) :=
.function { name := "bls_g1_add_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody803_18, returnShape := (Flapjack.Shape.one) }
def globalOutput803 := Pancake.PanLang.declToHOL globalData803
end InitECandidate.Proofs.FrontendStages.Declarations
