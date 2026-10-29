import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data809
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate793
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody809_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "bls_fp_decode64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64]]

def globalBody809_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody809_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 1#64)) globalBody809_0 globalBody809_1

def globalBody809_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody809_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody809_5 : Prog (BitVec 64) :=
.seq globalBody809_3 globalBody809_4

def globalBody809_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) globalBody809_5 globalBody809_1

def globalBody809_7 : Prog (BitVec 64) :=
.seq globalBody809_2 globalBody809_6

def globalBody809_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "map_fp2_to_g2"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "t"]

def globalBody809_9 : Prog (BitVec 64) :=
.seq globalBody809_7 globalBody809_8

def globalBody809_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_encode"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody809_11 : Prog (BitVec 64) :=
.seq globalBody809_9 globalBody809_10

def globalBody809_12 : Prog (BitVec 64) :=
.seq globalBody809_11 globalBody809_3

def globalBody809_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody809_14 : Prog (BitVec 64) :=
.seq globalBody809_12 globalBody809_13

def globalBody809_15 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("bls_fp_decode64") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "t"]) globalBody809_14

def globalBody809_16 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) globalBody809_15

def globalBody809_17 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody809_16

def globalBody809_18 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody809_17

def globalData809 : Decl (BitVec 64) :=
.function { name := "bls_map_fp2_to_g2_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody809_18, returnShape := (Flapjack.Shape.one) }
def globalOutput809 := Pancake.PanLang.declToHOL globalData809
end InitECandidate.Proofs.FrontendStages.Declarations
