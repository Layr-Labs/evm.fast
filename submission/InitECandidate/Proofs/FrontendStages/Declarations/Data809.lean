import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify793
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body809_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "bls_fp_decode64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64]]

def body809_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body809_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 1#64)) body809_0 body809_1

def body809_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body809_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body809_5 : Prog (BitVec 64) :=
.seq body809_3 body809_4

def body809_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body809_5 body809_1

def body809_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "map_fp2_to_g2"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "t"]

def body809_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_encode"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body809_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body809_10 : Prog (BitVec 64) :=
.seq body809_3 body809_9

def body809_11 : Prog (BitVec 64) :=
.seq body809_8 body809_10

def body809_12 : Prog (BitVec 64) :=
.seq body809_7 body809_11

def body809_13 : Prog (BitVec 64) :=
.seq body809_6 body809_12

def body809_14 : Prog (BitVec 64) :=
.seq body809_2 body809_13

def body809_15 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("bls_fp_decode64") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "t"]) body809_14

def body809_16 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body809_15

def body809_17 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body809_16

def body809_18 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body809_17

def body809_19 : Prog (BitVec 64) :=
.seq body809_2 body809_6

def body809_20 : Prog (BitVec 64) :=
.seq body809_19 body809_7

def body809_21 : Prog (BitVec 64) :=
.seq body809_20 body809_8

def body809_22 : Prog (BitVec 64) :=
.seq body809_21 body809_3

def body809_23 : Prog (BitVec 64) :=
.seq body809_22 body809_9

def body809_24 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("bls_fp_decode64") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "t"]) body809_23

def body809_25 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body809_24

def body809_26 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body809_25

def body809_27 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body809_26

def originalData809 : Decl (BitVec 64) :=
.function { name := "bls_map_fp2_to_g2_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body809_18, returnShape := (Flapjack.Shape.one) }
def simplifiedData809 : Decl (BitVec 64) :=
.function { name := "bls_map_fp2_to_g2_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body809_27, returnShape := (Flapjack.Shape.one) }
def original809 := Pancake.PanLang.declToHOL originalData809
def simplified809 := Pancake.PanLang.declToHOL simplifiedData809
end InitECandidate.Proofs.FrontendStages.Declarations
