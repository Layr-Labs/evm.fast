import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data781
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate765
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody781_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_normalize"
  [Flapjack.Exp.var Flapjack.VarKind.local "aff", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def globalBody781_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_fp_encode64"
  [Flapjack.Exp.var Flapjack.VarKind.local "aff", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody781_2 : Prog (BitVec 64) :=
.seq globalBody781_0 globalBody781_1

def globalBody781_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_fp_encode64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "aff", Flapjack.Exp.const 48#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64]]

def globalBody781_4 : Prog (BitVec 64) :=
.seq globalBody781_2 globalBody781_3

def globalBody781_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_fp_encode64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "aff", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 128#64]]

def globalBody781_6 : Prog (BitVec 64) :=
.seq globalBody781_4 globalBody781_5

def globalBody781_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_fp_encode64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "aff", Flapjack.Exp.const 144#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 192#64]]

def globalBody781_8 : Prog (BitVec 64) :=
.seq globalBody781_6 globalBody781_7

def globalBody781_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody781_10 : Prog (BitVec 64) :=
.seq globalBody781_8 globalBody781_9

def globalBody781_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody781_12 : Prog (BitVec 64) :=
.seq globalBody781_10 globalBody781_11

def globalBody781_13 : Prog (BitVec 64) :=
.decCall ("aff") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 192#64]) globalBody781_12

def globalBody781_14 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody781_13

def globalData781 : Decl (BitVec 64) :=
.function { name := "g2_encode", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody781_14, returnShape := (Flapjack.Shape.one) }
def globalOutput781 := Pancake.PanLang.declToHOL globalData781
end InitECandidate.Proofs.FrontendStages.Declarations
