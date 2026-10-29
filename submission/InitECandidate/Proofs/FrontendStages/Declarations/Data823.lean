import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify807
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body823_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body823_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body823_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64)) body823_0 body823_1

def body823_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 18#64)

def body823_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "lo") (Flapjack.Exp.const 0#64)) body823_3 body823_1

def body823_5 : Prog (BitVec 64) :=
.seq body823_4 body823_0

def body823_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "hi") (Flapjack.Exp.const 1#64)) body823_5 body823_1

def body823_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "hi") (Flapjack.Exp.const 0#64)) body823_0 body823_1

def body823_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "lo")

def body823_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "lo") (Flapjack.Exp.const 1#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 17#64)
        (Flapjack.Exp.var Flapjack.VarKind.local "lo"))]) body823_8 body823_1

def body823_10 : Prog (BitVec 64) :=
.seq body823_9 body823_0

def body823_11 : Prog (BitVec 64) :=
.seq body823_7 body823_10

def body823_12 : Prog (BitVec 64) :=
.seq body823_6 body823_11

def body823_13 : Prog (BitVec 64) :=
.dec ("lo") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 19#64])) body823_12

def body823_14 : Prog (BitVec 64) :=
.dec ("hi") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 18#64])) body823_13

def body823_15 : Prog (BitVec 64) :=
.seq body823_2 body823_14

def body823_16 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("is_zero_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 18#64]) body823_15

def body823_17 : Prog (BitVec 64) :=
.seq body823_6 body823_7

def body823_18 : Prog (BitVec 64) :=
.seq body823_17 body823_9

def body823_19 : Prog (BitVec 64) :=
.seq body823_18 body823_0

def body823_20 : Prog (BitVec 64) :=
.dec ("lo") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 19#64])) body823_19

def body823_21 : Prog (BitVec 64) :=
.dec ("hi") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 18#64])) body823_20

def body823_22 : Prog (BitVec 64) :=
.seq body823_2 body823_21

def body823_23 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("is_zero_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 18#64]) body823_22

def originalData823 : Decl (BitVec 64) :=
.function { name := "precompile_index", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body823_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData823 : Decl (BitVec 64) :=
.function { name := "precompile_index", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body823_23, returnShape := (Flapjack.Shape.one) }
def original823 := Pancake.PanLang.declToHOL originalData823
def simplified823 := Pancake.PanLang.declToHOL simplifiedData823
end InitECandidate.Proofs.FrontendStages.Declarations
