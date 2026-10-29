import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data823
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate806
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody823_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody823_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody823_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64)) globalBody823_0 globalBody823_1

def globalBody823_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 18#64)

def globalBody823_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "lo") (Flapjack.Exp.const 0#64)) globalBody823_3 globalBody823_1

def globalBody823_5 : Prog (BitVec 64) :=
.seq globalBody823_4 globalBody823_0

def globalBody823_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "hi") (Flapjack.Exp.const 1#64)) globalBody823_5 globalBody823_1

def globalBody823_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "hi") (Flapjack.Exp.const 0#64)) globalBody823_0 globalBody823_1

def globalBody823_8 : Prog (BitVec 64) :=
.seq globalBody823_6 globalBody823_7

def globalBody823_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "lo")

def globalBody823_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "lo") (Flapjack.Exp.const 1#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 17#64)
        (Flapjack.Exp.var Flapjack.VarKind.local "lo"))]) globalBody823_9 globalBody823_1

def globalBody823_11 : Prog (BitVec 64) :=
.seq globalBody823_8 globalBody823_10

def globalBody823_12 : Prog (BitVec 64) :=
.seq globalBody823_11 globalBody823_0

def globalBody823_13 : Prog (BitVec 64) :=
.dec ("lo") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 19#64])) globalBody823_12

def globalBody823_14 : Prog (BitVec 64) :=
.dec ("hi") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 18#64])) globalBody823_13

def globalBody823_15 : Prog (BitVec 64) :=
.seq globalBody823_2 globalBody823_14

def globalBody823_16 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("is_zero_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 18#64]) globalBody823_15

def globalData823 : Decl (BitVec 64) :=
.function { name := "precompile_index", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody823_16, returnShape := (Flapjack.Shape.one) }
def globalOutput823 := Pancake.PanLang.declToHOL globalData823
end InitECandidate.Proofs.FrontendStages.Declarations
