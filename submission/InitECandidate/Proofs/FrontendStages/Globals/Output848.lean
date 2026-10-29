import InitECandidate.Proofs.FrontendStages.Declarations.Data848
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody848_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 96#64],
    Flapjack.Exp.const 48#64, Flapjack.Exp.var Flapjack.VarKind.local "h"]

def globalBody848_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "h") (Flapjack.Exp.const 1#64)

def globalBody848_2 : Prog (BitVec 64) :=
.seq globalBody848_0 globalBody848_1

def globalBody848_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody848_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody848_5 : Prog (BitVec 64) :=
.seq globalBody848_3 globalBody848_4

def globalBody848_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody848_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "heq") (Flapjack.Exp.const 0#64)) globalBody848_5 globalBody848_6

def globalBody848_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) globalBody848_5 globalBody848_6

def globalBody848_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "kzg_load_g1"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 144#64],
    Flapjack.Exp.var Flapjack.VarKind.local "pr"]

def globalBody848_10 : Prog (BitVec 64) :=
.seq globalBody848_8 globalBody848_9

def globalBody848_11 : Prog (BitVec 64) :=
.seq globalBody848_10 globalBody848_8

def globalBody848_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "zlt") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ylt") (Flapjack.Exp.const 0#64)])) globalBody848_5 globalBody848_6

def globalBody848_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 0#64)) globalBody848_4 globalBody848_6

def globalBody848_14 : Prog (BitVec 64) :=
.seq globalBody848_3 globalBody848_13

def globalBody848_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64]

def globalBody848_16 : Prog (BitVec 64) :=
.seq globalBody848_14 globalBody848_15

def globalBody848_17 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 30#64])
  (Flapjack.Exp.const 16#64)

def globalBody848_18 : Prog (BitVec 64) :=
.seq globalBody848_16 globalBody848_17

def globalBody848_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]]

def globalBody848_20 : Prog (BitVec 64) :=
.seq globalBody848_18 globalBody848_19

def globalBody848_21 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody848_22 : Prog (BitVec 64) :=
.seq globalBody848_20 globalBody848_21

def globalBody848_23 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.one) ("kzg_verify") ([Flapjack.Exp.var Flapjack.VarKind.local "c",
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64],
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
  Flapjack.Exp.var Flapjack.VarKind.local "pr"]) globalBody848_22

def globalBody848_24 : Prog (BitVec 64) :=
.seq globalBody848_12 globalBody848_23

def globalBody848_25 : Prog (BitVec 64) :=
.decCall ("ylt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "r"]) globalBody848_24

def globalBody848_26 : Prog (BitVec 64) :=
.decCall ("zlt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "z", Flapjack.Exp.var Flapjack.VarKind.local "r"]) globalBody848_25

def globalBody848_27 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 512#64]),
      Flapjack.Exp.const 1344#64])) globalBody848_26

def globalBody848_28 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
  Flapjack.Exp.const 32#64]) globalBody848_27

def globalBody848_29 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64],
  Flapjack.Exp.const 32#64]) globalBody848_28

def globalBody848_30 : Prog (BitVec 64) :=
.seq globalBody848_11 globalBody848_29

def globalBody848_31 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("kzg_load_g1") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 96#64],
  Flapjack.Exp.var Flapjack.VarKind.local "c"]) globalBody848_30

def globalBody848_32 : Prog (BitVec 64) :=
.seq globalBody848_7 globalBody848_31

def globalBody848_33 : Prog (BitVec 64) :=
.decCall ("heq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64]) globalBody848_32

def globalBody848_34 : Prog (BitVec 64) :=
.seq globalBody848_2 globalBody848_33

def globalBody848_35 : Prog (BitVec 64) :=
.decCall ("pr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) globalBody848_34

def globalBody848_36 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) globalBody848_35

def globalBody848_37 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody848_36

def globalBody848_38 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody848_37

def globalData848 : Decl (BitVec 64) := .function { name := "kzg_point_evaluation_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody848_38, returnShape := (Flapjack.Shape.one) }
def globalOutput848 := Pancake.PanLang.declToHOL globalData848
end InitECandidate.Proofs.FrontendStages.Declarations
