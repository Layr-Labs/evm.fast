import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data690
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate674
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody690_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody690_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody690_2 : Prog (BitVec 64) :=
.seq globalBody690_0 globalBody690_1

def globalBody690_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody690_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "e0") (Flapjack.Exp.const 0#64)) globalBody690_2 globalBody690_3

def globalBody690_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "e1") (Flapjack.Exp.const 0#64)) globalBody690_2 globalBody690_3

def globalBody690_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_add"
  [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "p0", Flapjack.Exp.var Flapjack.VarKind.local "p0",
    Flapjack.Exp.var Flapjack.VarKind.local "p1"]

def globalBody690_7 : Prog (BitVec 64) :=
.seq globalBody690_5 globalBody690_6

def globalBody690_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn254_g1_to_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p0", Flapjack.Exp.var Flapjack.VarKind.local "out64"]

def globalBody690_9 : Prog (BitVec 64) :=
.seq globalBody690_7 globalBody690_8

def globalBody690_10 : Prog (BitVec 64) :=
.seq globalBody690_9 globalBody690_0

def globalBody690_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody690_12 : Prog (BitVec 64) :=
.seq globalBody690_10 globalBody690_11

def globalBody690_13 : Prog (BitVec 64) :=
.decCall ("e1") (Flapjack.Shape.one) ("bn254_parse_g1") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "in128", Flapjack.Exp.const 64#64],
  Flapjack.Exp.var Flapjack.VarKind.local "p1"]) globalBody690_12

def globalBody690_14 : Prog (BitVec 64) :=
.seq globalBody690_4 globalBody690_13

def globalBody690_15 : Prog (BitVec 64) :=
.decCall ("e0") (Flapjack.Shape.one) ("bn254_parse_g1") ([Flapjack.Exp.var Flapjack.VarKind.local "in128", Flapjack.Exp.var Flapjack.VarKind.local "p0"]) globalBody690_14

def globalBody690_16 : Prog (BitVec 64) :=
.decCall ("p1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody690_15

def globalBody690_17 : Prog (BitVec 64) :=
.decCall ("p0") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody690_16

def globalBody690_18 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody690_17

def globalData690 : Decl (BitVec 64) :=
.function { name := "bn254_g1_add", inline := false, exported := false, params := [("in128", Flapjack.Shape.one), ("out64", Flapjack.Shape.one)], body := globalBody690_18, returnShape := (Flapjack.Shape.one) }
def globalOutput690 := Pancake.PanLang.declToHOL globalData690
end InitECandidate.Proofs.FrontendStages.Declarations
