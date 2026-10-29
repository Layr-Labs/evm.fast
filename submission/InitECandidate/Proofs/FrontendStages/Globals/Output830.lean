import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data830
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate814
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody830_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 0#64,
    Flapjack.Exp.const 96#64, Flapjack.Exp.var Flapjack.VarKind.local "hdr"]

def globalBody830_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 4#64)

def globalBody830_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody830_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1024#64) (Flapjack.Exp.var Flapjack.VarKind.local "blen")) globalBody830_1 globalBody830_2

def globalBody830_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1024#64) (Flapjack.Exp.var Flapjack.VarKind.local "elen")) globalBody830_1 globalBody830_2

def globalBody830_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1024#64) (Flapjack.Exp.var Flapjack.VarKind.local "mlen")) globalBody830_1 globalBody830_2

def globalBody830_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "exp_start", Flapjack.Exp.var Flapjack.VarKind.local "hlen",
    Flapjack.Exp.var Flapjack.VarKind.local "hdr"]

def globalBody830_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "cost"]

def globalBody830_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "empty")

def globalBody830_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 0#64)

def globalBody830_10 : Prog (BitVec 64) :=
.seq globalBody830_8 globalBody830_9

def globalBody830_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody830_12 : Prog (BitVec 64) :=
.seq globalBody830_10 globalBody830_11

def globalBody830_13 : Prog (BitVec 64) :=
.decCall ("empty") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) globalBody830_12

def globalBody830_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "blen") (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mlen") (Flapjack.Exp.const 0#64))]) globalBody830_13 globalBody830_2

def globalBody830_15 : Prog (BitVec 64) :=
.seq globalBody830_7 globalBody830_14

def globalBody830_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.const 96#64, Flapjack.Exp.var Flapjack.VarKind.local "blen",
    Flapjack.Exp.var Flapjack.VarKind.local "bp"]

def globalBody830_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "exp_start", Flapjack.Exp.var Flapjack.VarKind.local "elen",
    Flapjack.Exp.var Flapjack.VarKind.local "ep"]

def globalBody830_18 : Prog (BitVec 64) :=
.seq globalBody830_16 globalBody830_17

def globalBody830_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "exp_start", Flapjack.Exp.var Flapjack.VarKind.local "elen"],
    Flapjack.Exp.var Flapjack.VarKind.local "mlen", Flapjack.Exp.var Flapjack.VarKind.local "mp"]

def globalBody830_20 : Prog (BitVec 64) :=
.seq globalBody830_18 globalBody830_19

def globalBody830_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "modexp"
  [Flapjack.Exp.var Flapjack.VarKind.local "bp", Flapjack.Exp.var Flapjack.VarKind.local "blen",
    Flapjack.Exp.var Flapjack.VarKind.local "ep", Flapjack.Exp.var Flapjack.VarKind.local "elen",
    Flapjack.Exp.var Flapjack.VarKind.local "mp", Flapjack.Exp.var Flapjack.VarKind.local "mlen",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody830_22 : Prog (BitVec 64) :=
.seq globalBody830_20 globalBody830_21

def globalBody830_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody830_24 : Prog (BitVec 64) :=
.seq globalBody830_22 globalBody830_23

def globalBody830_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def globalBody830_26 : Prog (BitVec 64) :=
.seq globalBody830_24 globalBody830_25

def globalBody830_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 128#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "mlen")

def globalBody830_28 : Prog (BitVec 64) :=
.seq globalBody830_26 globalBody830_27

def globalBody830_29 : Prog (BitVec 64) :=
.seq globalBody830_28 globalBody830_11

def globalBody830_30 : Prog (BitVec 64) :=
.decCall ("mp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "mlen", Flapjack.Exp.const 8#64]]) globalBody830_29

def globalBody830_31 : Prog (BitVec 64) :=
.decCall ("ep") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "elen", Flapjack.Exp.const 8#64]]) globalBody830_30

def globalBody830_32 : Prog (BitVec 64) :=
.decCall ("bp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blen", Flapjack.Exp.const 8#64]]) globalBody830_31

def globalBody830_33 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody830_32

def globalBody830_34 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "mlen", Flapjack.Exp.const 8#64]]) globalBody830_33

def globalBody830_35 : Prog (BitVec 64) :=
.seq globalBody830_15 globalBody830_34

def globalBody830_36 : Prog (BitVec 64) :=
.decCall ("cost") (Flapjack.Shape.one) ("modexp_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "blen", Flapjack.Exp.var Flapjack.VarKind.local "mlen",
  Flapjack.Exp.var Flapjack.VarKind.local "elen", Flapjack.Exp.var Flapjack.VarKind.local "head"]) globalBody830_35

def globalBody830_37 : Prog (BitVec 64) :=
.decCall ("head") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.var Flapjack.VarKind.local "hlen"]) globalBody830_36

def globalBody830_38 : Prog (BitVec 64) :=
.seq globalBody830_6 globalBody830_37

def globalBody830_39 : Prog (BitVec 64) :=
.decCall ("hlen") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "elen"]) globalBody830_38

def globalBody830_40 : Prog (BitVec 64) :=
.dec ("exp_start") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 96#64, Flapjack.Exp.var Flapjack.VarKind.local "blen"]) globalBody830_39

def globalBody830_41 : Prog (BitVec 64) :=
.seq globalBody830_5 globalBody830_40

def globalBody830_42 : Prog (BitVec 64) :=
.decCall ("mlen") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "ml"]) globalBody830_41

def globalBody830_43 : Prog (BitVec 64) :=
.decCall ("ml") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 64#64],
  Flapjack.Exp.const 32#64]) globalBody830_42

def globalBody830_44 : Prog (BitVec 64) :=
.seq globalBody830_4 globalBody830_43

def globalBody830_45 : Prog (BitVec 64) :=
.decCall ("elen") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "el"]) globalBody830_44

def globalBody830_46 : Prog (BitVec 64) :=
.decCall ("el") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 32#64],
  Flapjack.Exp.const 32#64]) globalBody830_45

def globalBody830_47 : Prog (BitVec 64) :=
.seq globalBody830_3 globalBody830_46

def globalBody830_48 : Prog (BitVec 64) :=
.decCall ("blen") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "bl"]) globalBody830_47

def globalBody830_49 : Prog (BitVec 64) :=
.decCall ("bl") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 32#64]) globalBody830_48

def globalBody830_50 : Prog (BitVec 64) :=
.seq globalBody830_0 globalBody830_49

def globalBody830_51 : Prog (BitVec 64) :=
.dec ("hdr") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 272#64])) globalBody830_50

def globalBody830_52 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) globalBody830_51

def globalBody830_53 : Prog (BitVec 64) :=
.dec ("data") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64])) globalBody830_52

def globalBody830_54 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 112#64])) globalBody830_53

def globalData830 : Decl (BitVec 64) :=
.function { name := "pre_modexp", inline := false, exported := false, params := [], body := globalBody830_54, returnShape := (Flapjack.Shape.one) }
def globalOutput830 := Pancake.PanLang.declToHOL globalData830
end InitECandidate.Proofs.FrontendStages.Declarations
