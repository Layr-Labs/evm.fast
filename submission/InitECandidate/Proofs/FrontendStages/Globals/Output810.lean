import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data810
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate794
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody810_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 96#64],
    Flapjack.Exp.const 48#64, Flapjack.Exp.var Flapjack.VarKind.local "h"]

def globalBody810_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "h") (Flapjack.Exp.const 1#64)

def globalBody810_2 : Prog (BitVec 64) :=
.seq globalBody810_0 globalBody810_1

def globalBody810_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody810_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody810_5 : Prog (BitVec 64) :=
.seq globalBody810_3 globalBody810_4

def globalBody810_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody810_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "heq") (Flapjack.Exp.const 0#64)) globalBody810_5 globalBody810_6

def globalBody810_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) globalBody810_5 globalBody810_6

def globalBody810_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "kzg_load_g1"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 144#64],
    Flapjack.Exp.var Flapjack.VarKind.local "pr"]

def globalBody810_10 : Prog (BitVec 64) :=
.seq globalBody810_8 globalBody810_9

def globalBody810_11 : Prog (BitVec 64) :=
.seq globalBody810_10 globalBody810_8

def globalBody810_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "zlt") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ylt") (Flapjack.Exp.const 0#64)])) globalBody810_5 globalBody810_6

def globalBody810_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 0#64)) globalBody810_4 globalBody810_6

def globalBody810_14 : Prog (BitVec 64) :=
.seq globalBody810_3 globalBody810_13

def globalBody810_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64]

def globalBody810_16 : Prog (BitVec 64) :=
.seq globalBody810_14 globalBody810_15

def globalBody810_17 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 30#64])
  (Flapjack.Exp.const 16#64)

def globalBody810_18 : Prog (BitVec 64) :=
.seq globalBody810_16 globalBody810_17

def globalBody810_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]]

def globalBody810_20 : Prog (BitVec 64) :=
.seq globalBody810_18 globalBody810_19

def globalBody810_21 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody810_22 : Prog (BitVec 64) :=
.seq globalBody810_20 globalBody810_21

def globalBody810_23 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.one) ("kzg_verify") ([Flapjack.Exp.var Flapjack.VarKind.local "c",
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64],
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
  Flapjack.Exp.var Flapjack.VarKind.local "pr"]) globalBody810_22

def globalBody810_24 : Prog (BitVec 64) :=
.seq globalBody810_12 globalBody810_23

def globalBody810_25 : Prog (BitVec 64) :=
.decCall ("ylt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "r"]) globalBody810_24

def globalBody810_26 : Prog (BitVec 64) :=
.decCall ("zlt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "z", Flapjack.Exp.var Flapjack.VarKind.local "r"]) globalBody810_25

def globalBody810_27 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
      Flapjack.Exp.const 1344#64])) globalBody810_26

def globalBody810_28 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
  Flapjack.Exp.const 32#64]) globalBody810_27

def globalBody810_29 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64],
  Flapjack.Exp.const 32#64]) globalBody810_28

def globalBody810_30 : Prog (BitVec 64) :=
.seq globalBody810_11 globalBody810_29

def globalBody810_31 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("kzg_load_g1") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 96#64],
  Flapjack.Exp.var Flapjack.VarKind.local "c"]) globalBody810_30

def globalBody810_32 : Prog (BitVec 64) :=
.seq globalBody810_7 globalBody810_31

def globalBody810_33 : Prog (BitVec 64) :=
.decCall ("heq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64]) globalBody810_32

def globalBody810_34 : Prog (BitVec 64) :=
.seq globalBody810_2 globalBody810_33

def globalBody810_35 : Prog (BitVec 64) :=
.decCall ("pr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) globalBody810_34

def globalBody810_36 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) globalBody810_35

def globalBody810_37 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody810_36

def globalBody810_38 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody810_37

def globalData810 : Decl (BitVec 64) :=
.function { name := "kzg_point_evaluation_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody810_38, returnShape := (Flapjack.Shape.one) }
def globalOutput810 := Pancake.PanLang.declToHOL globalData810
end InitECandidate.Proofs.FrontendStages.Declarations
