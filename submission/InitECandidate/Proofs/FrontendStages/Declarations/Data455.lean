import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify439
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body455_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 3#64)

def body455_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body455_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "cap") (Flapjack.Exp.const 1024#64)) body455_0 body455_1

def body455_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ncap" (Flapjack.Exp.const 1024#64)

def body455_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1024#64) (Flapjack.Exp.var Flapjack.VarKind.local "ncap")) body455_3 body455_1

def body455_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "ns",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 8#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "sp", Flapjack.Exp.const 32#64]]

def body455_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ns")

def body455_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 232#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ncap")

def body455_8 : Prog (BitVec 64) :=
.seq body455_6 body455_7

def body455_9 : Prog (BitVec 64) :=
.seq body455_5 body455_8

def body455_10 : Prog (BitVec 64) :=
.decCall ("ns") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 32#64]]) body455_9

def body455_11 : Prog (BitVec 64) :=
.seq body455_4 body455_10

def body455_12 : Prog (BitVec 64) :=
.dec ("ncap") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "cap", Flapjack.Exp.const 2#64]) body455_11

def body455_13 : Prog (BitVec 64) :=
.seq body455_2 body455_12

def body455_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "sp")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) body455_13 body455_1

def body455_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sp") (Flapjack.Exp.const 1024#64)) body455_0 body455_1

def body455_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 8#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "sp", Flapjack.Exp.const 32#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body455_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sp", Flapjack.Exp.const 1#64])

def body455_18 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body455_19 : Prog (BitVec 64) :=
.seq body455_17 body455_18

def body455_20 : Prog (BitVec 64) :=
.seq body455_16 body455_19

def body455_21 : Prog (BitVec 64) :=
.seq body455_15 body455_20

def body455_22 : Prog (BitVec 64) :=
.seq body455_14 body455_21

def body455_23 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 232#64])) body455_22

def body455_24 : Prog (BitVec 64) :=
.dec ("sp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 16#64])) body455_23

def body455_25 : Prog (BitVec 64) :=
.seq body455_5 body455_6

def body455_26 : Prog (BitVec 64) :=
.seq body455_25 body455_7

def body455_27 : Prog (BitVec 64) :=
.decCall ("ns") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 32#64]]) body455_26

def body455_28 : Prog (BitVec 64) :=
.seq body455_4 body455_27

def body455_29 : Prog (BitVec 64) :=
.dec ("ncap") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "cap", Flapjack.Exp.const 2#64]) body455_28

def body455_30 : Prog (BitVec 64) :=
.seq body455_2 body455_29

def body455_31 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "sp")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) body455_30 body455_1

def body455_32 : Prog (BitVec 64) :=
.seq body455_31 body455_15

def body455_33 : Prog (BitVec 64) :=
.seq body455_32 body455_16

def body455_34 : Prog (BitVec 64) :=
.seq body455_33 body455_17

def body455_35 : Prog (BitVec 64) :=
.seq body455_34 body455_18

def body455_36 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 232#64])) body455_35

def body455_37 : Prog (BitVec 64) :=
.dec ("sp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 16#64])) body455_36

def originalData455 : Decl (BitVec 64) :=
.function { name := "stack_push", inline := false, exported := false, params := [("v", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body455_24, returnShape := (Flapjack.Shape.one) }
def simplifiedData455 : Decl (BitVec 64) :=
.function { name := "stack_push", inline := false, exported := false, params := [("v", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body455_37, returnShape := (Flapjack.Shape.one) }
def original455 := Pancake.PanLang.declToHOL originalData455
def simplified455 := Pancake.PanLang.declToHOL simplifiedData455
end InitECandidate.Proofs.FrontendStages.Declarations
